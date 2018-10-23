class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :studentName, limit: 20
      t.string :lastName, limit: 20
      t.references :user, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
