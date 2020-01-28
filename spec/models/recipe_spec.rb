require 'rails_helper'

RSpec.describe Recipe, type: :model do

  before do
    @recipe = FactoryBot.build(:recipe)
    @recipe_not_material = FactoryBot.build(:recipe_not_material)
    @recipe_not_procedure = FactoryBot.build(:recipe_not_procedure)
  end

  describe "レシピモデルのバリデーションテスト" do

    context "有効であること" do
      it "タイトル、本文、写真、何人前、材料、手順があれば有効な状態であること" do
        recipe = @recipe
        expect(recipe).to be_valid
      end
    end

    context "親モデルのバリデーションテスト" do
      it "タイトルがなければ無効な状態であること" do
        recipe = FactoryBot.build(:recipe,title: nil)
        recipe.valid?

        expect(recipe.errors[:title]).to include("を入力してください")
      end

      it "本文がなければ無効な状態であること" do
        recipe = FactoryBot.build(:recipe,body: nil)
        recipe.valid?

        expect(recipe.errors[:body]).to include("を入力してください")
      end

      it "写真がなければ無効な状態であること" do
        recipe = FactoryBot.build(:recipe,picture: nil)
        recipe.valid?

        expect(recipe.errors[:picture]).to include("を入力してください")
      end

      it "何人前がなければ無効な状態であること"do
        recipe = FactoryBot.build(:recipe,serving: nil)
        recipe.valid?

        expect(recipe.errors[:serving]).to include("を入力してください")
      end
    end

    context "親モデル保存時の子モデルのバリデーションテスト" do
      it "材料がなければ無効な状態であること" do
        recipe_not_material = @recipe_not_material
        recipe_not_material.valid?
        expect(recipe_not_material.errors[:materials]).to include("を入力してください")
      end

      it "手順がなければ無効な状態であること" do
        recipe_not_procedure = @recipe_not_procedure
        recipe_not_procedure.valid?
        expect(recipe_not_procedure.errors[:procedures]).to include("を入力してください")
      end
    end
  end
end
