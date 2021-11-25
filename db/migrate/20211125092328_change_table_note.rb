class ChangeTableNote < ActiveRecord::Migration[6.0]
  def change
    change_table :notes do |t|
      t.remove :emotions_id
    end
    change_table :emotions do |t|
      t.remove :note_id
    end
  end
end
