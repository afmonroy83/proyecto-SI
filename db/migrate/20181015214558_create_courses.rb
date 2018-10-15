class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :location, limit: 20
      t.time :hour
      t.integer :idTeacher, limit: 10
      t.string :courseName, limit: 20
      t.integer :code, limit: 10
      t.integer :idMatter, limit: 10
      t.integer :studentNumber, limit: 2
      t.integer :idRoom, limit: 10

      t.timestamps
    end
  end
end
