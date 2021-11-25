class ChangeTableEmotion < ActiveRecord::Migration[6.0]
  def change
    change_table :emotions do |t|
      t.remove :emotion_name_id
      t.string :emotion_name
    end
  end
end
