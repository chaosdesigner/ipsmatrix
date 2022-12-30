# frozen_string_literal: true

require 'application_system_test_case'

class StatesTest < ApplicationSystemTestCase
  setup do
    @state = states(:one)
  end

  test 'visiting the index' do
    visit states_url
    assert_selector 'h1', text: 'States'
  end

  test 'should create state' do
    visit states_url
    click_on 'New state'

    fill_in 'Character', with: @state.character_id
    fill_in 'Entity', with: @state.entity_id
    fill_in 'Image', with: @state.image
    fill_in 'Sex', with: @state.sex_id
    fill_in 'Value max', with: @state.value_max
    fill_in 'Value min', with: @state.value_min
    click_on 'Create State'

    assert_text 'State was successfully created'
    click_on 'Back'
  end

  test 'should update State' do
    visit state_url(@state)
    click_on 'Edit this state', match: :first

    fill_in 'Character', with: @state.character_id
    fill_in 'Entity', with: @state.entity_id
    fill_in 'Image', with: @state.image
    fill_in 'Sex', with: @state.sex_id
    fill_in 'Value max', with: @state.value_max
    fill_in 'Value min', with: @state.value_min
    click_on 'Update State'

    assert_text 'State was successfully updated'
    click_on 'Back'
  end

  test 'should destroy State' do
    visit state_url(@state)
    click_on 'Destroy this state', match: :first

    assert_text 'State was successfully destroyed'
  end
end
