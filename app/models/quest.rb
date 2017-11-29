class Quest < ApplicationRecord
  has_many :quest_monsters, dependent: :destroy
  has_many :monsters, through: :quest_monsters
end
