class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.belongs_to :character
      t.string :name, null: false
      t.text :description
      t.string :weapon_class
      t.integer :cost
      t.string :damage_medium
      t.string :damage_small
      t.string :critical
      t.integer :range
      t.integer :weight
      t.string :type
      t.text :special
      t.timestamps
    end
  end
end