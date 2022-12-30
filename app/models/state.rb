# frozen_string_literal: true

class State < ApplicationRecord
  belongs_to :character
  belongs_to :entity
  belongs_to :sex
end
