# frozen_string_literal: true

json.extract! feature, :id, :name_en, :name_cz, :order, :created_at, :updated_at
json.url feature_url(feature, format: :json)
