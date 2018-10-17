class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :sName, limit: 20
      t.references :area, foreign_key: true
      t.references :credit, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
