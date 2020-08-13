class CreateUserTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :user_trips do |t|
      t.string :title
      t.trips :references
      t.string :references
      t.string :users

      t.timestamps
    end
  end
end
