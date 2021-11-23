class AddnullToNotes < ActiveRecord::Migration[6.0]
  def change
    change_column_null :notes, :visibility_id, null: true
  end
end
