class RemoveAddressFromParks < ActiveRecord::Migration[6.0]
  def change
    remove_column :parks, :address
  end
end
