class UnitSerializer < ActiveModel::Serializer
  attributes :id, :name, :full_name, :rarity, :element, :weapon
end
