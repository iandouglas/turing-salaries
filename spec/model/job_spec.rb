require 'rails_helper'

RSpec.describe Job, type: :model do
  describe 'validations' do
    it { should belong_to :user }
    it { should belong_to :city }

    it { should validate_presence_of :title }
    it { should validate_presence_of :base_salary }

    multi_state_fields = [
      :has_nearterm_perf_review,
      :has_bonus,
      :has_equity,
      :has_medical,
      :has_dental,
      :has_vision,
      :has_wfh,
      :has_family_leave,
      :has_retirement,
      :has_prof_devel,
      :hardware_provided,
    ]
    multi_state_fields.each do |field|
      it { should validate_presence_of field }
      it { should validate_numericality_of(field).only_integer }
      it { should validate_numericality_of(field).is_greater_than_or_equal_to(0) }
      it { should validate_numericality_of(field).is_less_than_or_equal_to(2) }
    end

  end

  describe 'class methods' do
  end

  describe 'instance methods' do
  end
end
