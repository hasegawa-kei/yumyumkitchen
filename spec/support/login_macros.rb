# frozen_string_literal: true

module LoginMacros
  def login(user)
    visit root_path
    click_link 'ログイン'
    fill_in 'user_name', with: user.name
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'ログイン'
  end

  def logout
    click_link 'ログアウト'
    expect(page).to have_content 'ログアウトしました。'
  end
end
