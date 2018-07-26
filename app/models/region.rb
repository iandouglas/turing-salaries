class Region < ApplicationRecord
  has_many :city_regions
  has_many :cities, through: :city_regions
end