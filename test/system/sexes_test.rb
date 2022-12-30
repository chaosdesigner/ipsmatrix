# frozen_string_literal: true

require 'application_system_test_case'

class SexesTest < ApplicationSystemTestCase
  setup do
    @sex = sexes(:one)
  end

  test 'visiting the index' do
    visit sexes_url
    assert_selector 'h1', text: 'Sexes'
  end

  test 'should create sex' do
    visit sexes_url
    click_on 'New sex'

    fill_in 'Description cz', with: @sex.description_cz
    fill_in 'Description en', with: @sex.description_en
    click_on 'Create Sex'

    assert_text 'Sex was successfully created'
    click_on 'Back'
  end

  test 'should update Sex' do
    visit sex_url(@sex)
    click_on 'Edit this sex', match: :first

    fill_in 'Description cz', with: @sex.description_cz
    fill_in 'Description en', with: @sex.description_en
    click_on 'Update Sex'

    assert_text 'Sex was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Sex' do
    visit sex_url(@sex)
    click_on 'Destroy this sex', match: :first

    assert_text 'Sex was successfully destroyed'
  end
end
