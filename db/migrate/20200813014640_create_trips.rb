class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :state, null: false
      t.text :description, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.references :park, null: false
      t.belongs_to :user, foreign_key: true
      t.integer :difficulty_rating, null: false

      t.timestamps
    end
  end
end
