class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :arName, limit: 20

      t.timestamps
    end
  end
end
