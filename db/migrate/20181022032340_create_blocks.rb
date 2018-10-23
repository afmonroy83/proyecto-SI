class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.string :bNum, limit: 4
      t.references :quarter, foreign_key: true

      t.timestamps
    end
  end
end
