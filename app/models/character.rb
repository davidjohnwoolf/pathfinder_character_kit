class Character < ActiveRecord::Base
  belongs_to :user

  has_many :weapons, :dependent => :destroy
  has_many :skills, :dependent => :destroy

  accepts_nested_attributes_for :weapons, :allow_destroy => true
  accepts_nested_attributes_for :skills, :allow_destroy => true
  
  validates_presence_of :name
end
