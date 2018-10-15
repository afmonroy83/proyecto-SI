class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :facultyName, limit: 20

      t.timestamps
    end
  end
end
