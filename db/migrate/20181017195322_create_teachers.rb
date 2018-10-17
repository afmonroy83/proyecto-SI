class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :teacherName, limit: 20
      t.string :profesion, limit: 20

      t.timestamps
    end
  end
end
