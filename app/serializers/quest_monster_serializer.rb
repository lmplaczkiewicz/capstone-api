class QuestMonsterSerializer < ActiveModel::Serializer
  attributes :id
  has_one :quest
  has_one :monster
end
