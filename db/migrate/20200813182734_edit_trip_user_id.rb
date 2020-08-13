class EditTripUserId < ActiveRecord::Migration[6.0]
  def change
    rename_column :trips, :user_id, :trip_lead_id
  end
end
