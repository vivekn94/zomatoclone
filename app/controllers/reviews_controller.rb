class ReviewsController < ApplicationController
	before_action :authenticate_user!
    
   def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      flash[:success] = "Review created!"
      redirect_to root_url
   end
end

def show
  @review=Review.find(params[:id])
  @comments=@review.comments
  end

def upvote 
  @review = Review.find(params[:id])
  @review.upvotes.create
  redirect_to :back
end

def bookmark 
  @review = Review.find(params[:id])
  @user=current_user
  @bookm=@user.bookmarks.create
  @bookm.review_id=@review.id
  @bookm.save
  redirect_to :back
end

def destroy
  @review = Review.find(params[:id])
  @review.destroy
  redirect_to :back
  end

   private

def review_params
    params.require(:review).permit(:content,:rest_name)
  end
end
