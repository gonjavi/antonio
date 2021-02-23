class Product < ApplicationRecord
  has_many :productorderjoins
  has_many :orders, through: :productorderjoins

  has_many :productcustomerjoins
  has_many :customers, through: :productcustomerjoins
end
