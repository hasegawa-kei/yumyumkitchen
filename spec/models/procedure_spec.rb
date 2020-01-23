require 'rails_helper'

RSpec.describe Procedure, type: :model do
  it "名称がなければ無効な状態であること" do
    procedure = FactoryBot.build(:procedure, content: nil)
    procedure.valid?
    expect(procedure.errors[:content]).to include("を入力してください")
  end
end
