# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_variables

  def set_variables
    @language = 'cz'
    @name_attribute = 'name_' + @language
    @desc_attribute = 'description_' + @language
    @host_feature_id = 10
  end
end
