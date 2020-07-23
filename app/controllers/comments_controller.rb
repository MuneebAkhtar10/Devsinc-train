class CommentsController < ApplicationController

	def create
    @newsfeed = Newsfeed.find(params[:newsfeed_id])
    @comment = @newsfeed.comments.create(comment_params)
    redirect_to newsfeed_path(@newsfeed)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
