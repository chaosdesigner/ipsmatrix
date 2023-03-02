class PagesController < ApplicationController
  before_action :preload, :only => [:home, :output]

  def home
    @features = Feature.all.order('seq')
    session[:states] = session[:query] = []
    session[:characters] = {}
  end

  def output

    # Process params and store session

    params.each do |param|
      if param[0].include? 'checkbox'
        state_id = param[0].split('_').second
        if param[1].to_i === 1
          if session[:states].empty?
            session[:states] = [state_id]
          elsif !(session[:states].include? state_id)
            session[:states] = session[:states] << state_id
          end
        elsif param[1].to_i === 0
          if !session[:states].empty? && (session[:states].include? state_id)
            session[:states].delete(state_id)
          end
        end
      elsif param[0].include? 'character'
        character_id = param[0].split('_').second
        session[:characters][character_id] = param[1]
      elsif param[0].include? 'reset'
        character_id = param[0].split('_').second
        session[:characters].delete(character_id)
      end
    end

    # Build SQL query
    
    sql_selects = []
    entities = []
    sql = nil
    if (!session[:characters].empty? || !session[:states].empty?)
      if !session[:characters].empty?
        session[:characters].each do |character|
          sql_selects << "SELECT entity_id, sex_id FROM states WHERE value_min <= #{character[1]} AND value_max >= #{character[1]} AND character_id = #{character[0]}"
        end
      end
      if !session[:states].empty?
        characters = []
        session[:states].each do |state|
          characters << State.find(state).character_id
        end
        features = {}
        characters.each do |character|
          feature_id = Character.find(character).feature_id
          features[feature_id] = features[feature_id] ? features[feature_id] << character : [character]
        end
        features.each do |key, feature|
          sql_selects << "SELECT entity_id, sex_id FROM states WHERE character_id IN (#{feature.join(',')})"
        end
      end
      sql = sql_selects.join(' INTERSECT ')

      selected_entities = State.find_by_sql(sql)
      selected_entities.each do |entity|
        entities << "#{entity.entity_id}_#{entity.sex_id}"
      end

      session[:query] = entities
      session[:sql] = sql
    else
      session[:query] = []
      session[:sql] = []
    end      

    if sql.nil?
      render partial: 'initial'
    else
      render partial: 'output'
    end
  end

  private

  def preload
    @entities = Entity.all.order('seq')
    @states = State.all
    @sexes = Sex.all
  end

end
