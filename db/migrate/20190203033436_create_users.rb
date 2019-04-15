class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :real_name
      t.string :user_name
      t.string :belong
      t.string :event
      t.integer :tel
      t.string :pass

      t.timestamps null: false
    end
  end
end
