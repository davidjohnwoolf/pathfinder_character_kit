require 'rails_helper'

RSpec.describe CharactersController, :type => :controller do

  describe '#index' do
    before do
      @user = create(:user)
      @characters = create_list(:character, 3, user: @user)
      sign_in @user
    end
    it 'displays a collection of characters' do
      get :index
      expect(response).to be_success
      expect(assigns(:characters).count).to eq 3
      expect(response).to render_template('index')
    end
  end

  describe '#show', focus: true do
    before do
      @user = create(:user)
      @character = create(:character, name: 'David', user: @user)
      sign_in @user
    end
    it 'displays an individual character' do
      get :show, id: @character.id
      expect(response).to be_success
      expect(assigns(:character).name).to eq 'David'
      expect(response).to render_template('show')
    end
  end

end
