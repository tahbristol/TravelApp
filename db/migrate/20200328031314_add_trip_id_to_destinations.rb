class AddTripIdToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :trip_id, :integer
  end
end
