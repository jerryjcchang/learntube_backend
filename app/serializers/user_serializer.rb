class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :mod
  has_many :videos
end
