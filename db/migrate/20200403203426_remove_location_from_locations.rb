class RemoveLocationFromLocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :destinations, :location
  end
end
