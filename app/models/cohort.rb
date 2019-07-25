class Cohort < ApplicationRecord
  has_many :videos
  has_many :users
end
