class Character < ApplicationRecord
  belongs_to :feature_id
  belongs_to :feature_type_id
end
