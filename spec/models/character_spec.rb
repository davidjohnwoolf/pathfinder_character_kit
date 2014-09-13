require 'rails_helper'

RSpec.describe Character, :type => :model do

  describe 'associations' do
    it { should belong_to :user }
    it { should have_many :weapons }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
  end

end
