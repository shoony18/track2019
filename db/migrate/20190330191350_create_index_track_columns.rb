class CreateIndexTrackColumns < ActiveRecord::Migration
  def change
    create_table :index_track_columns do |t|
      t.string :index_column_title
      t.string :index_title_image

      t.timestamps null: false
    end
  end
end
