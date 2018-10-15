class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name, limit: 20
      t.string :l_name, limit: 20
      t.integer :code, limit: 10
      t.string :email, limit: 40
      t.integer :idProgram, limit: 10
      t.string :password, limit: 40

      t.timestamps
    end
  end
end
