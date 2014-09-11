class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.belongs_to :user
      t.string :name, null: false
      t.string :alignment
      t.timestamps
    end
  end
end
