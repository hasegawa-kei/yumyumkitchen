# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Material, type: :model do
  it '名称がなければ無効な状態であること' do
    material = FactoryBot.build(:material, name: nil)
    material.valid?
    expect(material.errors[:name]).to include('を入力してください')
  end
  it '量がなければ無効な状態であること' do
    material = FactoryBot.build(:material, quantity: nil)
    material.valid?
    expect(material.errors[:quantity]).to include('を入力してください')
  end
end
