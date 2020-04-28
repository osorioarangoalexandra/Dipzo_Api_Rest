class AddSurnameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :surname, :string
    add_column :users, :phone, :string
    add_column :users, :email, :string
    add_column :users, :address, :string
  end
end
