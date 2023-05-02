require 'rails_helper'
RSpec.describe 'タスク管理機能', type: :system do
  describe '登録機能' do
    context 'タスクを登録した場合' do
      before do
        visit new_task_path
        fill_in 'task_title', with: '書類作成'
        fill_in 'task_content', with: '企画書を作成する'
        fill_in 'task_deadline', with: '2023-5-15'
        fill_in 'task_priority', with: '高'
        fill_in 'task_status', with: '未着手'
        click_button 'Create Task'
      end

      it '登録したタスクが表示される' do
        expect(page).to have_content('書類作成')
      end
    end
  end

#   describe '一覧表示機能' do
#     context '一覧画面に遷移した場合' do
#       it '登録済みのタスク一覧が表示される' do
#         FactoryBot.create(:task)
#         visit tasks_path
#         # visit（遷移）したpage（この場合、タスク一覧画面）に"書類作成"という文字列が、have_content（含まれていること）をexpect（確認・期待）する
#         expect(page).to have_content '書類作成'
#       end
#     end
#   end

#   describe '詳細表示機能' do
#     context '任意のタスク詳細画面に遷移した場合' do
#       it '該当タスクの内容が表示される' do
#         @task = FactoryBot.create(:task, title: 'task', content: '卒業発表会', deadline: '2022-04-28', priority: '高', status: '着手')
#         visit task_path(@task.id)
#         expect(page).to have_content '詳細'
#       end
#     end
#  end

#   describe '編集した画面表示機能' do 
#     let(:params) { {title: '書類作成', content:'企画書を作成する', deadline: '2023-5-15', priority: '高', status: '未着手'} }
#     context '選択しているタスクを編集します' do 
#       it '該当タスクの編集した内容が表示される' do 
#         visit task_path
#         expect(page).to have_content('企画書を編集終わりました')
#       end
#     end
#   end
#   describe '削除した画面表示されない機能' do 
#     context '選択しているタスクを削除します' do 
#       it '削除した内容が表示されないです' do 
#       end
#     end
#   end
end