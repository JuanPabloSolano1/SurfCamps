class Location < ApplicationRecord
  has_many :surfcamps
  belongs_to :continent
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
