FactoryBot.define do
  factory :user, class: User do
    sequence(:email) { |n| "user_#{n}@gmail.com" }
    sequence(:password) { "password" }
    sequence(:name) { |n| "User Name #{n}" }
    sequence(:cohort) { |n| "Cohort #{n}" }
    role { 0 }
  end

  factory :admin, parent: :user do
    sequence(:email) { |n| "admin_#{n}@gmail.com" }
    sequence(:name) { |n| "Admin Name #{n}" }
    role { 1 }
  end
end
