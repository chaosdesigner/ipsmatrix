# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :feature
  belongs_to :feature_type
end
