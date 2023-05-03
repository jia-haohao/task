require 'rails_helper'
RSpec.describe 'ユーザ登録・ログイン・ログアウト機能', type: :system do
  def user_login
    visit new_session_path
    fill_in 'session[email]', with: 'anna@anna.com'
    fill_in 'session[password]', with: 'powerm'
    click_button 'ログイン'
  end

  describe 'ユーザ登録のテスト' do
    context 'ユーザのデータがなくログインしていない状態' do
      it 'ユーザ新規登録のテスト' do
        visit new_user_path
        fill_in 'user[name]', with: 'anna'
        fill_in 'user[email]', with: 'anna@anna.com'
        fill_in 'user[password]', with: 'powerm'
        fill_in 'user[password_confirmation]', with: 'powerm'
        click_on '登録'

        click_link 'マイページ'

        expect(page).to have_content 'anna'
      end
      it 'ログインしていない時はログイン画面に飛ぶテスト' do
        visit root_path
        expect(current_path).to eq new_session_path
      end
    end
  end