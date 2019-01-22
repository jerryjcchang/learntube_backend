class VideoSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructor, :length, :category, :youtube_id
  has_many :users
  has_many :notes
end
