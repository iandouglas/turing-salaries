require 'rails_helper'

RSpec.describe Region, type: :model do
  describe 'validations' do
    it { should have_many :cities }
  end

  describe 'class methods' do
  end

  describe 'instance methods' do
  end
end