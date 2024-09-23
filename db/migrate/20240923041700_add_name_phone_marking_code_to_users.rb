class AddNamePhoneMarkingCodeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :phonenumber, :string
    add_column :users, :markingcode, :string
  end
end
