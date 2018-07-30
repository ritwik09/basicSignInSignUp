class AddConfirmPasswordToUsers < ActiveRecord::Migration[5.2]
  def up
    #add_column :users, :confirm_password, :string
    #drop_column :users, :confirm_password, :string

  end

  def down
  	remove_column :users, :confirm_password, :string
  end
end
