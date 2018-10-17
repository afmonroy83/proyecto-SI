class CreateQuarters < ActiveRecord::Migration[5.2]
  def change
    create_table :quarters do |t|
      t.string :address, limit: 40
      t.string :q_Name, limit: 20

      t.timestamps
    end
  end
end
