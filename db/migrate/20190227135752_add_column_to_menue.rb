class AddColumnToMenue < ActiveRecord::Migration
  def change
    add_column :menues, :user_id, :integer
  end
end
