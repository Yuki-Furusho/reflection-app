class Emotion < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :note_emotions
  has_many :notes, through: :note_emotions

  validates :emotion_name, presence: true
end
