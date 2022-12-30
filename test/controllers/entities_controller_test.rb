# frozen_string_literal: true

require 'test_helper'

class EntitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entity = entities(:entity3)
  end

  test 'should get index' do
    get entities_url
    assert_response :success
  end

  test 'should get new' do
    get new_entity_url
    assert_response :success
  end

  test 'should create entity' do
    assert_difference('Entity.count') do
      post entities_url,
           params: { entity: { authority: @entity.authority, name: @entity.name, name_cz: @entity.name_cz,
                               name_en: @entity.name_en, order: @entity.order } }
    end

    assert_redirected_to entity_url(Entity.last)
  end

  test 'should show entity' do
    get entity_url(@entity)
    assert_response :success
  end

  test 'should get edit' do
    get edit_entity_url(@entity)
    assert_response :success
  end

  test 'should update entity' do
    patch entity_url(@entity),
          params: { entity: { authority: @entity.authority, name: @entity.name, name_cz: @entity.name_cz,
                              name_en: @entity.name_en, order: @entity.order } }
    assert_redirected_to entity_url(@entity)
  end

  test 'should destroy entity' do
    assert_difference('Entity.count', -1) do
      delete entity_url(@entity)
    end

    assert_redirected_to entities_url
  end
end
