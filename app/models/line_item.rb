class LineItem < ApplicationRecord
	#attr_accessible :order_id, :product_id, :quantitiy

  belongs_to :order
  belongs_to :product
end
