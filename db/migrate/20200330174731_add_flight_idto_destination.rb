class AddFlightIdtoDestination < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :flight_id, :integer
  end
end
