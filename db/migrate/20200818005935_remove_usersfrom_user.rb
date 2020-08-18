class RemoveUsersfromUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :user_trips, :user
  end
end
