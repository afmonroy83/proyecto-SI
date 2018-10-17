class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :name, limit: 20

      t.timestamps
    end
  end
end
