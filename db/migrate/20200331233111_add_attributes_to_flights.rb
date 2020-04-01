class AddAttributesToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :airline, :string
    add_column :flights, :flight_info, :string
    add_column :flights, :cost, :string
  end
end
