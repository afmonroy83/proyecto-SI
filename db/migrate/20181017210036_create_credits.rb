class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.integer :numeroDeCreditos, limit: 2

      t.timestamps
    end
  end
end
