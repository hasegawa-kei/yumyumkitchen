FactoryBot.define do
  factory :recipe do
    title "テストレシピ"
    body "テストの本文"
    picture {File.open("#{Rails.root}/app/assets/images/test.png")}
    count 1
    association :owner

    after(:build) do |recipe|
      recipe.materials<< build(:material, recipe: recipe)
      recipe.procedures<< build(:procedure, recipe: recipe)
    end
  end

  factory :recipe_not_material, class: Recipe do
    title "テストレシピ"
    body "テストの本文"
    picture {File.open("#{Rails.root}/app/assets/images/test.png")}
    count 1
    association :owner

    after(:build) do |recipe|
      recipe.procedures<< build(:procedure, recipe: recipe)
    end
  end

  factory :recipe_not_procedure, class: Recipe do
    title "テストレシピ"
    body "テストの本文"
    picture {File.open("#{Rails.root}/app/assets/images/test.png")}
    count 1
    association :owner

    after(:build) do |recipe|
      recipe.materials<< build(:material, recipe: recipe)
    end
  end
end
