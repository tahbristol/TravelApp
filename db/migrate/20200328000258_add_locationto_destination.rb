class AddLocationtoDestination < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :name, :string
    add_column :destinations, :location, :string
    add_column :destinations, :description, :string
  end
end
