class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :state
      t.string :park_name
      t.string :date_state
      t.string :date_end

      t.timestamps
    end
  end
end
