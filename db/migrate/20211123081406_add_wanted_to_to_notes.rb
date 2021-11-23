class AddWantedToToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :wanted_to, :string
  end
end
