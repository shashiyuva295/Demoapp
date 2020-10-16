class User < ApplicationRecord
	has_many :posts, dependent: :destroy
	
	#has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
	#has_many :followers, through: :following_users
	#has_many :followees, through: :followed_users
	#has_many :comments
	#has_one :addresssss
end
