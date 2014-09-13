require 'rails_helper'

RSpec.describe Weapon, :type => :model do

  describe 'associations' do
    it { should belong_to :character }
  end

end
