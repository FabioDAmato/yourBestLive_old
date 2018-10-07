class AddViaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :via, :string
  end
end
