class Article < ApplicationRecord
    #validates :title,:text, presence: true,length: { minimum: 5 }
    #validates :terms_of_service, 	:acceptance => { :accept => 'yes' }
   # validates :title, inclusion: { in: %w(title1 title2 title3), message: "%{value} is not a valid title" }

end