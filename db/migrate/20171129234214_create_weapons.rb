class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :dice
      t.integer :sides

      t.timestamps
    end
  end
end
