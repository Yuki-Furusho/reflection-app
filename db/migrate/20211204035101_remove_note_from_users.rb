class RemoveNoteFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :note, null: false, foreign_key: true
  end
end
