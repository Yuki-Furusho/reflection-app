class Note < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :visibility
  belongs_to :user
  has_many :emotions

  validates :fact, presence: true
end
