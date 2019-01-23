class User < ApplicationRecord
  has_many :users_videos
  has_many :videos, through: :users_videos
  has_many :notes
end
