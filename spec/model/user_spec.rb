require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should have_many :jobs }
    it { should have_many(:cities).through(:jobs) }

    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
  end

  describe 'class methods' do
  end

  describe 'instance methods' do
  end
end