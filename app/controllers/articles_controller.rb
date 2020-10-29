class ArticlesController < ApplicationController

  #http_basic_authenticate_with name: "sha", password: "123", expect: [:index, :show]

  def index
    @articles = Article.all
    @search = params["search"]
    if @search.present?
      @title = @search["title"]
      #@articles = Article.where(title: @title)
      @articles = Article.where("title LIKE ?", "%#{@title}%")
  
    end
  end
 
  def show
    @article = Article.find(params[:id])
    
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
    if params[:remove_image].present?
      @remove_image
    end

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

  private
    def article_params
      params.require(:article).permit(:title, :text,:remove_image, images: []) #, :image, , :description, :content)
    end

end