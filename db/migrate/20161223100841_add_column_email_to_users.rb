class AddColumnEmailToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email, :string
    add_column :users, :last_name, :string
    add_column :users, :mobile, :number
  end
end
