class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :total
      t.integer :rank
      t.integer :ability_mod
      t.integer :special_mod
      t.boolean :class_skill
      t.boolean :trained
      t.boolean :armor_penalty

      t.timestamps
    end
  end
end
