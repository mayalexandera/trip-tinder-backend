class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :username, mull: false, unique: true
      t.string :password_digest
      t.text :bio
      t.string :avatar

      t.timestamps
    end
  end
end
