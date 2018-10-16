class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :idCourse, limit: 10
      t.integer :idStudent, limit: 10

      t.timestamps
    end
  end
end
