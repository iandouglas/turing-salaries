require 'rails_helper'

RSpec.describe City, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should have_many :regions }
    it { should have_many :jobs }
  end

  describe 'class methods' do
  end

  describe 'instance methods' do
  end
end