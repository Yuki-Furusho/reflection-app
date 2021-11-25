class NoteEmotion < ApplicationRecord
  belongs_to :note
  belongs_to :emotion
end
