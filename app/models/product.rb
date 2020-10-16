class Product < ApplicationRecord
	#attr_accessible :name, :price

  has_many :line_items
  has_many :orders, :through => :line_items
end
