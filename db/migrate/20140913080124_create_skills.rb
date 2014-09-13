class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.belongs_to :character
      t.string :name
      t.integer :rank
      t.boolean :class_skill

      t.timestamps
    end
  end
end
