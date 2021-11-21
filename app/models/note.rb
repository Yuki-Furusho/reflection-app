class Note < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :visibility
  belongs_to :user

  validates :fact, :visibility_id, presence: true
end
