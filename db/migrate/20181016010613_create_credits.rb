class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.integer :creditNumber, limit: 1

      t.timestamps
    end
  end
end
