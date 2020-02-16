require 'rails_helper'

RSpec.feature "Likes", type: :system do
  describe "いいね" , js: true, retry: 3 do
    before "ログイン済み" do
      user = FactoryBot.create(:user)
      recipe = FactoryBot.create(:recipe, user: user)
      login user
      visit recipes_path
    end

    scenario "いいねができる" do
      expect(page).to have_css(".like-create")
      expect(page).to_not have_css(".like-delete")
      expect {
        first(".like-create").click
        click_button "いいね"
        wait_for_ajax(5)

      }.to change{Like.count}.by(1)
    end

  
  end
end
