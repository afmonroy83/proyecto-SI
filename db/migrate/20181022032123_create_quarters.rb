class CreateQuarters < ActiveRecord::Migration[5.2]
  def change
    create_table :quarters do |t|
      t.string :qName, limit: 20
      t.string :address, limit: 40

      t.timestamps
    end
  end
end
