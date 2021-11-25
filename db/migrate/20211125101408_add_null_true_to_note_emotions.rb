class AddNullTrueToNoteEmotions < ActiveRecord::Migration[6.0]
  def change
    change_column_null :note_emotions, :note_id, null: true
    change_column_null :note_emotions, :emotion_id, null: true
  end
end
