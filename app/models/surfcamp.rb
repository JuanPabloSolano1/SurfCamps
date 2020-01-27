class Surfcamp < ApplicationRecord
  belongs_to :location
  has_one_attached :photo
end
