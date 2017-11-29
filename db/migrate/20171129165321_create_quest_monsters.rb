class CreateQuestMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :quest_monsters do |t|
      t.references :quest, foreign_key: true
      t.references :monster, foreign_key: true

      t.timestamps
    end
  end
end
