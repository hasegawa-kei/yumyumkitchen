FactoryBot.define do
  factory :user, aliases: [:owner] do
    name     "hogehoge"
    sequence(:email)  { |n|"hogehoge#{n}@example.com" }
    password "hogehogehoge1"
  end
end
