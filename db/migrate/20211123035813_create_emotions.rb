class CreateEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :emotions do |t|
      t.integer     :emotion_name_id, null: false
      t.references  :note, foreign_key: true, null: false
      t.timestamps
    end
  end
end
