class AddEmotionsIdToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :emotions_id, :integer
  end
end
