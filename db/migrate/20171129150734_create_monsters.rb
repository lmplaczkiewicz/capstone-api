class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :health
      t.integer :armor
      t.integer :xp

      t.timestamps
    end
  end
end
