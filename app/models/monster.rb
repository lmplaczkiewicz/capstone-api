class Monster < ApplicationRecord
  has_many :quest_monsters, dependent: :destroy
  has_many :quests, through: :quest_monsters
end
