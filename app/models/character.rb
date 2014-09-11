class Character < ActiveRecord::Base
  belongs_to :user
  has_many :weapons, :dependent => :destroy
  accepts_nested_attributes_for :weapons
end
