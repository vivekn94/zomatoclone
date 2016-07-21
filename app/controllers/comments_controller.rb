class CommentsController < ApplicationController

	  def create
	  	@review=Review.find(params[:review_id])
	  	@comment=@review.comments.create(comment_params)
        @comment.user_id=current_user.id
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
      redirect_to :back
    else
      flash[:notice] = "Error creating comment: #{@comment.errors}"
      redirect_to :back
    end
end

def upvote
	@comment=Comment.find(params[:id])
	@comment.commentvotes.create
	redirect_to :back
end


def comment_params
    params.require(:comment).permit(:content)
  end
end


