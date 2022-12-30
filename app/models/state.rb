class State < ApplicationRecord
  belongs_to :character
  belongs_to :entity
  belongs_to :sex
end
