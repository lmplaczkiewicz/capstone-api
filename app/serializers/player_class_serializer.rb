class PlayerClassSerializer < ActiveModel::Serializer
  attributes :id, :name, :str, :dex, :con, :wis, :int, :cha
  has_many :characters
  has_many :monsters
end
