class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.integer :idFaculty, limit: 10
      t.string :ProgramName, limit: 20

      t.timestamps
    end
  end
end
