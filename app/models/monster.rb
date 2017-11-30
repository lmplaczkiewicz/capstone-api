class Monster < ApplicationRecord
  has_many :quest_monsters, dependent: :destroy
  has_many :quests, through: :quest_monsters
  belongs_to :player_class
  belongs_to :weapon
end
