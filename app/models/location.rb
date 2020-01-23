class Location < ApplicationRecord
  has_many :surfcamps
  has_one_attached :photo
end
