class CreateHelpers < ActiveRecord::Migration[5.2]
  def change
    create_table :helpers do |t|
      t.integer :idStudent, limit: 10
      t.integer :idSubject, limit: 10
      t.integer :period, limit: 10

      t.timestamps
    end
  end
end
