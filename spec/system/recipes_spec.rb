require 'rails_helper'

RSpec.feature "Recipes", type: :system do
  scenario "ユーザーは新しいレシピを作成する" do
    user = FactoryBot.create(:user)
    login user

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

      expect(page).to have_content "を作成しました"
      expect(page).to have_content "テストタイトル"

    }.to change(user.recipes, :count).by(1)

  end

  scenario "レシピを編集する" do
    user = FactoryBot.create(:user)
    recipe = FactoryBot.create(:recipe, user: user)
    login user

    visit recipes_path
    click_link "テストレシピ"
    click_link "編集"
    find(".recipe_title").set("テストテスト")
    click_button "レシピの保存"

    expect(page).to have_content "テストテスト"

  end

  scenario "レシピを削除する" do
    user = FactoryBot.create(:user)
    recipe = FactoryBot.create(:recipe, user: user)
    login user

    expect {
      visit recipes_path
      click_link "テストレシピ"
      click_link "削除"
      expect(page.driver.browser.switch_to.alert.text).to eq "投稿を削除しますか？"
      page.driver.browser.switch_to.alert.accept
      expect(page).to have_content '「テストレシピ」が削除されました。'
    }.to change(user.recipes, :count).by(-1)
  end

  #scenario "レシピを検索する" do
  #  visit recipes_path
  #  find(".recipe-name-serch").set("豚")
  #  click_button "料理名で検索"
  #  save_and_open_page
  #  expect(page).to have_content "豚肉のさっぱり"
  #end
end
