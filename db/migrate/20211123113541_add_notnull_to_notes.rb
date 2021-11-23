class AddNotnullToNotes < ActiveRecord::Migration[6.0]
  def change
    change_column_null :notes, :user_id, null: false
  end
end
