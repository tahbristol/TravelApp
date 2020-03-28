class AddUserIDtoDestination < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :user_id, :string
  end
end
