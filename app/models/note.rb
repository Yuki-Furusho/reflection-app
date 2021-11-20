class Note < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :visibility

  validates :fact, :visibility_id, presence: true
end
