class RecreateArtilcesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :feed_url
      t.string :image_url
      t.integer :cause_id
    end
  end
end
