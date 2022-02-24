class PlantSerializer < ActiveModel::Serializer
    attributes :id, :name, :price, :description, :icon
 end