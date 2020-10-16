class Tag < ApplicationRecord
	  attr_accessor :name, :taggable_id, :taggable_type
	  belongs_to :taggable, :polymorphic => true
end
