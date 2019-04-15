class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :best, :string
    add_column :users, :result, :string
    add_column :users, :target, :string
    add_column :users, :apeal, :string

   
  end
end
