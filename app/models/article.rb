class Article < ApplicationRecord
    # validates :title,:text, presence: true,length: { minimum: 5 }
    # validates :terms_of_service, 	:acceptance => { :accept => 'yes' }
    # validates :title, inclusion: { in: %w(title1 title2 title3), message: "%{value} is not a valid title" }
   def self.search(search)
   		if search
   			  article_type = Article.find(title: search)
			  if article_type
				    self.where(article_id: article_type)
		  	else
				  @article = Article.all
			end   	
   		end
   end
end