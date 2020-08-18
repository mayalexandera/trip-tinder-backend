class AddUniqueIndextoUserTrips < ActiveRecord::Migration[6.0]
  def change
    add_index :user_trips, [:user_id, :trip_id], unique: true
  end
end
