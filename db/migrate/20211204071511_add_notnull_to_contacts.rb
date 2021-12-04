class AddNotnullToContacts < ActiveRecord::Migration[6.0]
  def change
    change_column_null :contacts, :name, false
    change_column_null :contacts, :email, false
    change_column_null :contacts, :content, false
  end
end
