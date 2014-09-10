class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.belongs_to :user
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :alignment
      t.string :deity
      t.string :size
      t.string :gender
      t.string :age
      t.string :height
      t.string :weight
      t.string :skin
      t.string :hair
      t.string :eyes
      t.timestamps
    end
  end
end
