require 'rails_helper'

RSpec.describe '/profiles', type: :request do
  # Profile. As you add validations to Profile, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Profile.create! valid_attributes
      get profiles_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      profile = Profile.create! valid_attributes
      get profile_url(profile)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_profile_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      profile = Profile.create! valid_attributes
      get edit_profile_url(profile)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Profile' do
        expect do
          post profiles_url, params: { profile: valid_attributes }
        end.to change(Profile, :count).by(1)
      end

      it 'redirects to the created profile' do
        post profiles_url, params: { profile: valid_attributes }
        expect(response).to redirect_to(profile_url(Profile.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Profile' do
        expect do
          post profiles_url, params: { profile: invalid_attributes }
        end.to change(Profile, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post profiles_url, params: { profile: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested profile' do
        profile = Profile.create! valid_attributes
        patch profile_url(profile), params: { profile: new_attributes }
        profile.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the profile' do
        profile = Profile.create! valid_attributes
        patch profile_url(profile), params: { profile: new_attributes }
        profile.reload
        expect(response).to redirect_to(profile_url(profile))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        profile = Profile.create! valid_attributes
        patch profile_url(profile), params: { profile: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested profile' do
      profile = Profile.create! valid_attributes
      expect do
        delete profile_url(profile)
      end.to change(Profile, :count).by(-1)
    end

    it 'redirects to the profiles list' do
      profile = Profile.create! valid_attributes
      delete profile_url(profile)
      expect(response).to redirect_to(profiles_url)
    end
  end
end
