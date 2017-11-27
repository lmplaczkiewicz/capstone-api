class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :xp
      t.integer :armor
      t.integer :health
      t.string :class

      t.timestamps
    end
  end
end
