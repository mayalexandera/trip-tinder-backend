class RemoveUsersfromUserTrips < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_trips, :trips_id
    add_reference :user_trips, :user, foreign_key: true
    add_reference :user_trips, :trip, foreign_key: true
  end
end