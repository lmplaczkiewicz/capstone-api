class QuestSerializer < ActiveModel::Serializer
  attributes :id, :story, :reward, :renown, :monsters
end
