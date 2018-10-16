class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.integer :idHelper, limit: 10
      t.decimal{10} :valuePay
      t.integer :monthsNumber, limit: 12
      t.decimal{10} :total

      t.timestamps
    end
  end
end
