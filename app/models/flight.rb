class Flight < ApplicationRecord
    belongs_to :user
    has_many :destinations, through: users
end