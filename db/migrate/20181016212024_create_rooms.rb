class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :idBlock, limit: 10

      t.timestamps
    end
  end
end
