class VideoSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructor, :length, :category, :url
  has_many :users
  has_many :notes
end
