# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :skill do
    name "MyString"
    total 1
    rank 1
    ability_mod 1
    special_mod 1
    class_skill false
    trained false
    armor_penalty false
  end
end
