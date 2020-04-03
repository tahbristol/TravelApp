class AddNameToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :name, :string
    add_column :locations, :destination_id, :integer
  end
end
