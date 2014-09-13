require 'rails_helper'

RSpec.describe CharactersController, :type => :controller do

  describe '#index' do
    before do
      @user = create(:user)
      @characters = create_list(:character, 3, user: @user)
    end
    context 'user signed in' do
      before do
        sign_in @user
      end
      it 'displays a collection of characters' do
        get :index
        expect(response).to be_success
        expect(assigns(:characters).count).to eq 3
        expect(response).to render_template('index')
      end
    end
    context 'user is not signed in' do
      it 'redirects to sign_in' do
        get :index
        expect(response).to be_redirect
        expect(response).to redirect_to new_user_session_path
      end
    end
  end

  describe '#show' do
    before do
      @user = create(:user)
      @character = create(:character, name: 'David', user: @user)
    end
    context 'user signed in' do
      before do
        sign_in @user
      end
      it 'displays an individual character' do
        get :show, id: @character.id
        expect(response).to be_success
        expect(assigns(:character).name).to eq 'David'
        expect(response).to render_template('show')
      end
    end
    context 'user is not signed in' do
      it 'redirects to sign_in' do
        get :show, id: @character.id
        expect(response).to be_redirect
        expect(response).to redirect_to new_user_session_path
      end
    end
  end

end
