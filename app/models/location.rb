class Location < ApplicationRecord
  belongs_to :destination, optional: true
end
