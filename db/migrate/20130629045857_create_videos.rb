class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :order
      t.string :url
      t.string :img
      t.string :title
      t.text :description
      t.references :course

      t.timestamps
    end
    add_index :videos, :course_id
  end
end
