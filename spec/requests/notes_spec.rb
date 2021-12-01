require 'rails_helper'

RSpec.describe "Notes", type: :request do
  before do
    @user = FactoryBot.create(:user)
  end

  describe "GET /notes" do
    it "未ログインの場合landingが表示されること" do
      get root_path
      expect(response.body).to include('気持ち')
    end
    it "ログイン済の場合indexが表示されること" do
      sign_in @user
      get root_path
      expect(response.body).to include('最近は')
    end
  end

  xdescribe "POST /notes" do
    context "作成できる場合" do
      it "トップページにリダイレクトされること" do
        sign_in @user
        post notes_path, params: { note: { fact: 'test', emotion_ids: ["","2"] } }
        expect(response).to(root_path)
      end
      it "notesの件数が増えていること" do
        sign_in @user
        expect do
          post notes_path, params: { note: { fact: 'test'} }
        end.to change(Note, :count).by(1)
      end
    end
    context "作成できない場合" do
      it "新規作成ページがレンダリングされること" do
        sign_in @user
        post notes_path, params: { note: { fact: ''} }
        expect(response).to render_template(:new)
      end
      it "notesの件数が増えていないこと" do
        sign_in @user
        expect do
          post notes_path, params: { note: { fact: ''} }
        end.to change(Note, :count).by(0)
      end
    end
  end
end
