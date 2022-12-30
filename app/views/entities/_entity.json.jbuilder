# frozen_string_literal: true

json.extract! entity, :id, :name, :name_en, :name_cz, :order, :authority, :created_at, :updated_at
json.url entity_url(entity, format: :json)
