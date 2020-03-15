# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  scenario 'ユーザー登録ができる' do
    visit new_user_registration_path

    expect do
      find('.new_user_name').set('aaa')
      find('.new_user_email').set('testtest@aaa.com')
      find('.new_user_password').set('123456789')
      find('.new_user_password_confirmation').set('123456789')
      click_button '登録する'

      expect(page).to have_content 'アカウント登録が完了しました。'
    end.to change { User.count }.by(1)
  end

  scenario 'ユーザーページを編集できる' do
    user = FactoryBot.create(:user)
    login user

    visit root_path
    click_link 'マイページ'
    click_link '編集する'
    attach_file 'user_avatar', "#{Rails.root}/app/assets/logo.png"
    fill_in 'user_current_password', with: 'hogehogehoge1'
    click_button '更新'
    expect(page).to have_content 'アカウント情報を変更しました。'
  end
end
