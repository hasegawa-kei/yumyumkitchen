# frozen_string_literal: true

FactoryBot.define do
  factory :procedure do
    image { File.open("#{Rails.root}/app/assets/images/test.png") }
    content 'テストの手順'
    association :recipe, factory: :recipe
  end
end
