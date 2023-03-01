class PagesController < ApplicationController
  before_action :preload, :only => [:home, :output]

  def home
    @features = Feature.all.order('seq')
    session[:states] = []
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



    render partial: 'output'
  end

  private

  def preload
    @entities = Entity.all.order('seq')
    @states = State.all
    @sexes = Sex.all
  end

end
