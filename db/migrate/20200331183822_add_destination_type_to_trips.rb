class AddDestinationTypeToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :destination_type, :string
  end
end
