class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :subjectName, limit: 20
      t.integer :idArea, limit: 10
      t.integer :idCredit, limit: 10
      t.integer :idPensul, limit: 10

      t.timestamps
    end
  end
end
