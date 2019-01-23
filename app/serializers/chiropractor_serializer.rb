class ChiropractorSerializer < ActiveModel::Serializer
  attributes :name, :address, :state, :picture, :link
  has_many :comments
end
