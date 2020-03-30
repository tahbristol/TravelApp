class Accomodation < ApplicationRecord
  belongs_to :destination, through: :users
end
