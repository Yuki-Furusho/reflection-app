class AddWantedYouToToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :wanted_you_to, :string
  end
end
