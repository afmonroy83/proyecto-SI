class CreateQuarters < ActiveRecord::Migration[5.2]
  def change
    create_table :quarters do |t|
      t.string :address, limit: 40
      t.strinng{20} :name

      t.timestamps
    end
  end
end
