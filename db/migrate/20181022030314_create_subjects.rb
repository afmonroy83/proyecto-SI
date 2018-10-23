class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :subName, limit: 20
      t.references :area, foreign_key: true
      t.integer :credits, limit: 2
      t.references :program, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
