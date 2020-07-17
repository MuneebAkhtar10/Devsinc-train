class PostsController < ApplicationController

	def create
    	@article = Article.find(params[:article_id])
    	@post = @article.posts.create(post_params)
    	redirect_to article_path(@article)
  	end
 	def destroy
    	# @article = Article.find(params[:article_id])
    	@post = Post.find(params[:id])
    	@post.destroy
    	redirect_to article_url(@post.article_id)
    
  end
  private
    def post_params
      params.require(:post).permit(:commenter, :body, :phone)
    end

 
end