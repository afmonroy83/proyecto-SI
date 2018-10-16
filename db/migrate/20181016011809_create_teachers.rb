class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name, limit: 20
      t.string :proffesion, limit: 20

      t.timestamps
    end
  end
end
