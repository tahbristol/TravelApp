class AddUserIdToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :user_id, :string
  end
end
