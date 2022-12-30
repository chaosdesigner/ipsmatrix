# frozen_string_literal: true

json.extract! state, :id, :character_id, :entity_id, :sex_id, :value_min, :value_max, :image, :created_at, :updated_at
json.url state_url(state, format: :json)
