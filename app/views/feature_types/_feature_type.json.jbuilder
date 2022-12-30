# frozen_string_literal: true

json.extract! feature_type, :id, :description, :created_at, :updated_at
json.url feature_type_url(feature_type, format: :json)
