class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.text :trailer
      t.integer :week_no
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
