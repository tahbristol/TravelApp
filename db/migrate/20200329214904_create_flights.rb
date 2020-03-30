class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t. string :airline
      t. string :flight_information
    end
  end
end
