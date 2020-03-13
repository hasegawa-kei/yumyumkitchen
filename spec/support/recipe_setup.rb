# frozen_string_literal: true

RSpec.shared_context 'recipe setup' do
  let(:user) { FactoryBot.create(:user) }
  let(:recipe) { FactoryBot.create(:recipe, user: user) }
end
