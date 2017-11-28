class PlayerClassSerializer < ActiveModel::Serializer
  attributes :id, :name, :str, :dex, :con, :wis, :int, :cha
end
