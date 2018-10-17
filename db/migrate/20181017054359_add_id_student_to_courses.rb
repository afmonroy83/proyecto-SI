class AddIdStudentToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :idStudent, :integer, limit: 10
  end
end
