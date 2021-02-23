class Customer < ApplicationRecord
  has_many :placesorderjoins
  has_many :orders, through: :placesorderjoins

  has_many :productcustomerjoins
  has_many :products, through: :productcustomerjoins
end
