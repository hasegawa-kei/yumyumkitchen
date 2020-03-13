# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name 'hogehoge'
    sequence(:email) { |n| "hogehoge#{n}@example.com" }
    password 'hogehogehoge1'
  end
end
