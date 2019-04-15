class AddEventLevelToMenue < ActiveRecord::Migration
  def change
    add_column :menues, :menue_event, :string
    add_column :menues, :menue_level, :string
  end
end
