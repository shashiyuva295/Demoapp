class Article < ApplicationRecord

  has_many :reviews, dependent: :destroy
  validates :title,:text, presence: true ,length: { minimum: 5 }

  #for uploading image:
  #  mount_uploader :image, ImageUploader

  #Active Storage
  has_many_attached :images
end
  #after_initialize do |article|
  # puts 'Object initialized'
  #end

  #after_find do |article|
  #  puts 'found an Object'  
  #end

  #after_touch do 
  #  puts 'Article touched'
  #end
  ##Vaidations 
   # before_validation :give_default_title
    
    #capotalizing title
   # before_create do
   #  self.title = title.capitalize
   # end


   #setting default title 
   # private
   #  def give_default_title
   #     self.title = 'default_title' if title.blank?
   #   end

    # validates :terms_of_service, 	:acceptance => { :accept => 'yes' }
    # validates :title, inclusion: { in: %w(title1 title2 title3), message: "%{value} is not a valid title" }
   #def self.search(search)
   	#	if search
   		#	  article_type = Article.find(title: search)
			#  if article_type
			#	    self.where(article_id: article_type)
		  #	else
			#	  @article = Article.all
		#	end   	
   	#	end
   #end

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end