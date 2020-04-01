class AddDestinationTypeToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :destination_type, :string
  end
end
