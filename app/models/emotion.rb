class Emotion < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :note
  has_many :emotion_name_id

  validates :emotion_name_id, presence: true
end
