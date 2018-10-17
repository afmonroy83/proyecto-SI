class RemoveCodeFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :code, :string
  end
end
