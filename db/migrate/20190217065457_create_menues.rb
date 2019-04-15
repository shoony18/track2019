class CreateMenues < ActiveRecord::Migration
  def change
    create_table :menues do |t|
      t.text :title
      t.text :frequency
      t.text :stress
      t.text :comment

      t.timestamps null: false
    end
  end
end
