class Destination < ApplicationRecord
  belongs_to :trip, optional: true
  belongs_to :user
  has_many :accomodations, through: :users
end
