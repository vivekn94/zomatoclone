class StaticPagesController < ApplicationController
	before_action :authenticate_user!

  def home

  	    @review = current_user.reviews.build if user_signed_in?
  	    @reviews=current_user.reviews
  	    if params[:search]
  	    @reviewsearch = Review.search(params[:search]).order("created_at DESC")
  	    @users=User.all
  end
end

end

