require 'rails_helper'

RSpec.describe CharactersController, :type => :controller do

  describe '#index', focus: true do
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

end
