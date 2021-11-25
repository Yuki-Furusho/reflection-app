class Note < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one :visibility
  belongs_to :user
  has_many :emotions, through: :note_emotions
  has_many :note_emotions

  validates :fact, presence: true
end
