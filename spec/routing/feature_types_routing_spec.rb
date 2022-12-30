# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FeatureTypesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/feature_types').to route_to('feature_types#index')
    end

    it 'routes to #new' do
      expect(get: '/feature_types/new').to route_to('feature_types#new')
    end

    it 'routes to #show' do
      expect(get: '/feature_types/1').to route_to('feature_types#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/feature_types/1/edit').to route_to('feature_types#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/feature_types').to route_to('feature_types#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/feature_types/1').to route_to('feature_types#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/feature_types/1').to route_to('feature_types#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/feature_types/1').to route_to('feature_types#destroy', id: '1')
    end
  end
end
