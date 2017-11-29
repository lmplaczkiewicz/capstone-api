class AddClassToMonster < ActiveRecord::Migration[5.1]
  def change
    add_reference :monsters, :player_class, foreign_key: true
  end
end
