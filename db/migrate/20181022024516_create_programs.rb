class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :programName, limit: 20
      t.string :tipeP, limit: 20
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
