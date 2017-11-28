class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :story
      t.integer :reward
      t.integer :renown

      t.timestamps
    end
  end
end
