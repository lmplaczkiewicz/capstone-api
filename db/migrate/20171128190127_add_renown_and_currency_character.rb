class AddRenownAndCurrencyCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :renown, :integer
    add_column :characters, :currency, :integer
  end
end
