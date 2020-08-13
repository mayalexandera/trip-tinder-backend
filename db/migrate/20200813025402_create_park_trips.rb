class CreateParkTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :park_trips do |t|
      t.references :trip, foreign_key: true
      t.references :park, foreign_key: true

      t.timestamps
    end
  end
end
