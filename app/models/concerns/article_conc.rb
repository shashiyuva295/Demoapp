module ArticleConc
	extend ActiveSupport::Concern

	included do
		has_many :reviews, dependent: :destroy
		validates :title,:text, presence: true ,length: { minimum: 5 }
		has_many_attached :images

		before_create do
		  self.name = name.capitalize
		end
	end
end