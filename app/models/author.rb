class Author < ApplicationRecord
	  #attr_accessible :book_id, :first_name, :last_name
	belongs_to :book
end
