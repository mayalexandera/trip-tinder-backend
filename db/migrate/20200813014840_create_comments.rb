class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :date
      t.string :title
      t.user :belongs_to
      t.text_area :body

      t.timestamps
    end
  end
end
