require 'rails_helper'

RSpec.describe Note, type: :model do
  before do
    @note = FactoryBot.build(:note)
  end

  context "正しく登録できるとき" do
    it "factが入力されていれば登録できる" do
      expect(@note).to be_valid
    end
  end

  context "正しく登録できないとき" do
    it "factが入力されていないとき登録できない" do
      @note.fact = ''
      @note.valid?
      expect(@note.errors.full_messages).to include("内容を入力してください")
    end
  end
end
