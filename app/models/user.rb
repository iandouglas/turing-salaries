class User < ApplicationRecord
  has_many :jobs
  has_many :cities, through: :jobs

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates_presence_of :name

  enum role: [:student, :admin]
end