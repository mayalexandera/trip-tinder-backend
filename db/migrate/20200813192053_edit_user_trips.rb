class EditUserTrips < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_trips, :users_id, :trip_leader_id
  end
end
