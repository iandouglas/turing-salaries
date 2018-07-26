FactoryBot.define do
  factory :region, class: Region do
    sequence(:name) { |n| "Region Name #{n}" }
  end
end
