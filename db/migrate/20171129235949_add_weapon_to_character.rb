class AddWeaponToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :weapon, foreign_key: true
  end
end
