class RenameuserIdColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_trips, :trip_leader_id, :trip_lead_id
  end
end
