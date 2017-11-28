class AddClassKeyToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :player_class, foreign_key: true
  end
end
