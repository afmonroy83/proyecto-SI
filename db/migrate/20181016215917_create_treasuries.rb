class CreateTreasuries < ActiveRecord::Migration[5.2]
  def change
    create_table :treasuries do |t|
      t.string :name, limit: 20
      t.integer :idReceipt, limit: 10

      t.timestamps
    end
  end
end
