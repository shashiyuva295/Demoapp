class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "sha", password: "123", expect: [:index, :show]

  def index
    @articles = Article.all
  end
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
#adding search feature
  
   def search
 	  if params[:title]
      @articles = Article.find('title LIKE ?', "%#{params[:title]}%")
    else 
      @articles = Article.all
    end 
  end
 
 # def search
 #   if params[:title].blank?
 #     redirect_to articles_path
 #   else
 #     @parameter = params[:title].downcase
 #     @articles = Article.all.where("lower(title) LIKE :title", title: "%#{@parameter}%")
 #   end
 # end


  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end