class Car < ApplicationRecord
	  attr_accessor :name
	  has_many :tags, :as => :taggable  
end
