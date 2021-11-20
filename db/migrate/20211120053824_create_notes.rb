class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string      :when
      t.string      :fact,          null: false
      t.integer     :visibility_id, null: false
      t.timestamps
    end
  end
end
