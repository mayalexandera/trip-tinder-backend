class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :name, null: false, unique: true
      t.string :state, null: false
      t.integer :rating, numericality: true
      t.string :park_code, null: false
      t.string :address, null: false
      t.index [:name, :state], unique: true

      t.timestamps
    end
  end
end
