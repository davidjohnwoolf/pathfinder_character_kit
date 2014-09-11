class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.belongs_to :character
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
