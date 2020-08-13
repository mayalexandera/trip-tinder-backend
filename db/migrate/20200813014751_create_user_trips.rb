class CreateUserTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :user_trips do |t|
      t.references :trips, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
