class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :tName, limit: 20
      t.string :tLastname, limit: 20
      t.string :profesion, limit: 40

      t.timestamps
    end
  end
end
