class AddWeaponToMonster < ActiveRecord::Migration[5.1]
  def change
    add_reference :monsters, :weapon, foreign_key: true
  end
end
