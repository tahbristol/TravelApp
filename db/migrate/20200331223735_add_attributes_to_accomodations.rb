class AddAttributesToAccomodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accomodations, :hotel, :string
    add_column :accomodations, :start_date, :string
    add_column :accomodations, :end_date, :string
  end
end
