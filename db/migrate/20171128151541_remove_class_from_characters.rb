class RemoveClassFromCharacters < ActiveRecord::Migration[5.1]
  def change
    remove_column :characters, :playerClass
  end
end
