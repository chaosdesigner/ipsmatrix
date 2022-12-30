# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/sexes', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Sex. As you add validations to Sex, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Sex.create! valid_attributes
      get sexes_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      sex = Sex.create! valid_attributes
      get sex_url(sex)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_sex_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      sex = Sex.create! valid_attributes
      get edit_sex_url(sex)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Sex' do
        expect do
          post sexes_url, params: { sex: valid_attributes }
        end.to change(Sex, :count).by(1)
      end

      it 'redirects to the created sex' do
        post sexes_url, params: { sex: valid_attributes }
        expect(response).to redirect_to(sex_url(Sex.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Sex' do
        expect do
          post sexes_url, params: { sex: invalid_attributes }
        end.to change(Sex, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post sexes_url, params: { sex: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested sex' do
        sex = Sex.create! valid_attributes
        patch sex_url(sex), params: { sex: new_attributes }
        sex.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the sex' do
        sex = Sex.create! valid_attributes
        patch sex_url(sex), params: { sex: new_attributes }
        sex.reload
        expect(response).to redirect_to(sex_url(sex))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        sex = Sex.create! valid_attributes
        patch sex_url(sex), params: { sex: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested sex' do
      sex = Sex.create! valid_attributes
      expect do
        delete sex_url(sex)
      end.to change(Sex, :count).by(-1)
    end

    it 'redirects to the sexes list' do
      sex = Sex.create! valid_attributes
      delete sex_url(sex)
      expect(response).to redirect_to(sexes_url)
    end
  end
end
