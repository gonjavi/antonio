class Order < ApplicationRecord
  has_many :placesorderjoins
  has_many :customers, through: :placesorderjoins

  has_many :productorderjoins
  has_many :products, through: :productorderjoins
end
