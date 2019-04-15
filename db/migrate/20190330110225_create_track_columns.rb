class CreateTrackColumns < ActiveRecord::Migration
  def change
    create_table :track_columns do |t|
      t.string :column_title
      t.string :title_image
      t.string :column_lead
      t.string :column_topic1
      t.string :column_article1
      t.string :column_image1
      t.string :column_topic2
      t.string :column_article2
      t.string :column_image2
      t.string :column_topic3
      t.string :column_article3
      t.string :column_image3

      t.timestamps null: false
    end
  end
end
