class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :xp, :armor, :health, :playerClass
end
