class Continent < ApplicationRecord
  has_many :locations
  has_one_attached :photo
  has_many :surfcamps, through: :locations
end
