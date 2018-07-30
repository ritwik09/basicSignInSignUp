class AddUnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uname, :string
  end
end
