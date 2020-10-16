class Book < ApplicationRecord
	#attr_accessible :title
	has_many :author
end
