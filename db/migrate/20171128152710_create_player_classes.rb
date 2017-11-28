class CreatePlayerClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :player_classes do |t|
      t.string :name
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :wis
      t.integer :int
      t.integer :cha

      t.timestamps
    end
  end
end
