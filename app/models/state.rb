class State < ApplicationRecord
  belongs_to :character_id
  belongs_to :entity_id
  belongs_to :sex_id
end
