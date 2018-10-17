class AddIdUserToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :idUser, :integer
  end
end
