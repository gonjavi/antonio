class Placeorderjoin < ApplicationRecord
  belongs_to :customer
  belongs_to :order
end
