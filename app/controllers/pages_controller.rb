class PagesController < ApplicationController

  def home
    @entities = Entity.all.order('seq')
    @features = Feature.all.order('seq')
    @states = State.all
    @sexes = Sex.all
  end

end
