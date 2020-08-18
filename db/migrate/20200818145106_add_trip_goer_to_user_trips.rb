class AddTripGoerToUserTrips < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_trips, :trip_lead_id
    add_reference :user_trips, :user, foreign_key: :true

  end
end
