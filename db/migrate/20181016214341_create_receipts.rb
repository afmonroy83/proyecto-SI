class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.decimal{10} :value
      t.string :payForm, limit: 10
      t.integer :idStudent, limit: 10
      t.date :dateReceipt

      t.timestamps
    end
  end
end
