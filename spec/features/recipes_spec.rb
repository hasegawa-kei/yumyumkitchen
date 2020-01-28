require 'rails_helper'

RSpec.feature "Recipes", type: :feature do
  scenario "ユーザーは新しいレシピを作成する" do
    user = FactoryBot.create(:user)

    visit root_path
    click_link "ログイン"
    fill_in "user_name", with: user.name
    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password
    click_button "ログイン"

    expect {
      click_link "レシピを投稿する"
      find(".recipe_title").set("テストタイトル")
      attach_file 'recipe[picture]', "#{Rails.root}/tmp/test.png",visible: false
      find(".recipe_serving").set(2)
      find(".material_name").set("肉")
      find(".material_quantity").set("100g")
      find(".procedure_content").set("テスト手順")
      find(".recipe_body").set("テストポイント")
      click_button "レシピの保存"
    }.to change(Recipe, :count).by(1)

  end
end
