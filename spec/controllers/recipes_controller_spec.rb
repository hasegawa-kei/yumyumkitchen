require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  include_context "recipe setup"
  describe "#new" do
    context "認証済みユーザーとして" do
      it "正常にレスポンスを返すこと" do
        sign_in user
        get :new
        expect(response).to be_success
      end
    end

    context "ゲストユーザーとして" do
      it "３０２レスポンスを返すこと" do
        get :new
        expect(response).to have_http_status "302"
      end

      it "サインイン画面にリダイレクトすること" do
        get :new
        expect(response).to redirect_to "/users/sign_in"
      end
    end
  end

  describe "#index" do
    it "ログインしていなくてもアクセス許可" do
      get :index
      expect(response).to be_success
    end
  end

  describe "#show" do
    it "ログインしていなくてもアクセス許可" do
      get :show, params: { id: recipe.id }
      expect(response).to be_success
    end
  end

  describe "#destroy" do
    context "認可されたユーザー" do
      before do
        @user = FactoryBot.create(:user)
        @recipe = FactoryBot.create(:recipe, user:@user)
      end

      it "レシピの削除できること" do
        sign_in @user
        expect {
          delete :destroy, params: {id: @recipe.id}
        }.to change(@user.recipes, :count).by(-1)
      end
    end
  end
end
