class AddDirectionsToParks < ActiveRecord::Migration[6.0]
  def change
    add_column :parks, :description, :text
    add_column :parks, :weatherInfo, :text
    add_column :parks, :img_url, :string
    add_column :parks, :directionsUrl, :string
  end
end
