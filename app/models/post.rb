class Post < ApplicationRecord
  #belongs_to :user
  belongs_to :user #class_name: 'User', foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
end
