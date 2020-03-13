# frozen_string_literal: true

FactoryBot.define do
  factory :material do
    name '肉'
    quantity '１グラム'
    association :recipe, factory: :recipe
  end
end
