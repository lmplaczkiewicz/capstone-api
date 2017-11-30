class WeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :dice, :sides
  has_many :characters
  has_many :monsters
end
