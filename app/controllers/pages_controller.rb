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
      end
    end

    # Build SQL query

    sql_characters = []
    entities = []
    sql = nil
    if (!session[:characters].empty? || !session[:states].empty?)
      sql = 'SELECT entity_id, sex_id FROM states WHERE '
      if !session[:characters].empty?
        session[:characters].each do |character|
          sql_characters << "(value_min <= #{character[1]} AND value_max >= #{character[1]} AND character_id = #{character[0]})"
        end
      end
      if !session[:states].empty?
        characters = []
        session[:states].each do |state|
          characters << State.find(state).character_id
        end
        sql_states = "character_id IN (#{characters.join(',')})"
      end

      if sql_states
        sql = "#{sql}#{sql_states}"
        if !sql_characters.empty?
          characters = sql_characters.join(' OR ')
          sql = "#{sql} OR #{characters}"
        end
      elsif !sql_characters.empty?
        sql = "#{sql}#{sql_characters.join(' OR ')}"
      end

      selected_entities = State.find_by_sql(sql)
      selected_entities.each do |entity|
        entities << "#{entity.entity_id}_#{entity.sex_id}"
      end

      session[:query] = entities
    else
      session[:query] = []
    end

    render partial: 'output'
  end

  private

  def preload
    @entities = Entity.all.order('seq')
    @states = State.all
    @sexes = Sex.all
  end

end
