FactoryBot.define do
  factory :city, class: City do
    sequence(:name) { |n| "City Name #{n}" }
  end
end
