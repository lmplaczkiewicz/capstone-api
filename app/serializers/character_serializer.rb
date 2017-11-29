class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :xp, :armor, :health, :player_class_id
  has_one :player_class
end
