class City < ApplicationRecord
  has_many :jobs
  has_many :city_regions
  has_many :regions, through: :city_regions

  validates_presence_of :name
end