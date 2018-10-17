class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.references :faculty, foreign_key: true
      t.string :programName, limit: 20

      t.timestamps
    end
  end
end
