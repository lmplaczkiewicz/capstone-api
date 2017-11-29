class MonsterSerializer < ActiveModel::Serializer
  attributes :id, :name, :health, :armor, :xp, :quests
  has_one :player_class
end
