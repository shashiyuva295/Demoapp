class Bike < ApplicationRecord
	attr_accessor :name
	has_many :tags, :as=> :taggable
end
