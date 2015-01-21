class Location < ActiveRecord::Base
  has_many :home_locations
  has_many :homes, through: :house_locations

  validates :name, :area_code, presence: true
  validates :area_code, :name, unique: true
end
