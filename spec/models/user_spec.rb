# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it '姓、名、メール、パスワードがあれば有効な状態であること' do
    user = User.new(
      name: 'Sumner',
      email: 'tester@example.com',
      password: 'dottle-nouveau-pavilion-tights-furze'
    )
    expect(user).to be_valid
  end
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }

  # it "名前がなければ無効な状態であること" do
  #  user = FactoryBot.build(:user, name: nil)
  #  user.valid?
  #
  #  expect(user.errors[:name]).to include("を入力してください")
  # end

  # it "Eメールがなければ無効な状態であること" do
  #  user = FactoryBot.build(:user, email: nil)
  #  user.valid?

  #  expect(user.errors[:email]).to include("を入力してください")
  # end

  # it "Eメールが重複しないこと" do
  #  FactoryBot.create(:user, email: "test@example.com")
  #  user = FactoryBot.build(:user, email: "test@example.com")
  #  user.valid?

  #  expect(user.errors[:email]).to include("はすでに存在します")
  # end

  # it '有効なファクトリを持つ事' do
  #  expect(FactoryBot.create(:material)).to be_valid
  # end
end
