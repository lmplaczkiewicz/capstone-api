class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :xp, :armor, :health, :player_class_id, :renown, :currency, :level
  has_one :player_class
  has_one :weapon
end
