# frozen_string_literal: true

FactoryBot.define do
  factory :like do
    association :recipe
    association :user
  end
end
