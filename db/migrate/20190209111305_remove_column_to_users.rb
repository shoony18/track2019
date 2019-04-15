class RemoveColumnToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :pb, :string
    remove_column :users, :record, :string
    remove_column :users, :goal, :string
    remove_column :users, :pr, :string
  end
end
