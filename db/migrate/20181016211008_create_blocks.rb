class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.string :name, limit: 20
      t.integer :idQuarters, limit: 10

      t.timestamps
    end
  end
end
