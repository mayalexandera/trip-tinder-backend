class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.datetime :date
      t.string :title, null: false
      t.belongs_to :user, null: false
      t.belongs_to :park, null: false
      t.belongs_to :trip, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
