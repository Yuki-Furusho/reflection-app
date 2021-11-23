class EmotionName < ActiveHash::Base
  include ActiveHash::Associations
  belongs_to :emotions
  
  self.data = [
    { id: 1, name: '歓喜' },
    { id: 2, name: '喜び' },
    { id: 3, name: '平穏' },
    { id: 4, name: '愛' },
    { id: 5, name: '敬愛' },
    { id: 6, name: '信頼' },
    { id: 7, name: '受容' },
    { id: 8, name: '服従' },
    { id: 9, name: '恐怖' },
    { id: 10, name: '恐れ' },
    { id: 11, name: '不安' },
    { id: 12, name: '畏怖' },
    { id: 13, name: '驚嘆' },
    { id: 14, name: '驚き' },
    { id: 15, name: '放心' },
    { id: 16, name: '拒絶' },
    { id: 17, name: '悲嘆' },
    { id: 18, name: '悲しみ' },
    { id: 19, name: '哀愁' },
    { id: 20, name: '後悔' },
    { id: 21, name: '強い嫌悪' },
    { id: 22, name: 'うんざり' },
    { id: 23, name: '軽蔑' },
    { id: 24, name: '激怒' },
    { id: 25, name: '怒り' },
    { id: 26, name: 'イライラ' },
    { id: 27, name: '攻撃' },
    { id: 28, name: '警戒' },
    { id: 29, name: '期待' },
    { id: 30, name: '関心' },
    { id: 31, name: '楽観' },
  ]
end
