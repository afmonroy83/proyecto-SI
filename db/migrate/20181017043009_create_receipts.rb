class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.string :idStudent
      t.decimal :value
      t.date :f_generate
      t.string :T_pay, limit: 10

      t.timestamps
    end
  end
end
