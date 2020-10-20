class ReviewsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		@reviews = @article.reviews.create(comment_params)
		redirect_to article_path(@article)
	end

	private
    def comment_params
      params.require(:review).permit(:commenter, :body)
    end
end
