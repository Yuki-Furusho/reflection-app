class CreateNoteEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :note_emotions do |t|
      t.references :note, null: false, foreign_key: true
      t.references :emotion, null: false, foreign_key: true
      t.timestamps
    end
  end
end
