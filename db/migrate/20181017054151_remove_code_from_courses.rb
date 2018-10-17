class RemoveCodeFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :code, :string
  end
end
