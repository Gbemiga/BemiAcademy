class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.date :date_added
      t.text :picture
      t.text :description

      t.timestamps null: false
    end
  end
end
