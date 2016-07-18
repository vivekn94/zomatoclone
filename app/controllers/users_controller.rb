class UsersController < ApplicationController

before_action :authenticate_user!

	def show
		@user=User.find(params[:id])
		@users=@user.followers
		@reviews=@user.reviews
	end

	def follow
		@user=User.find(params[:id])
		current_user.follow(@user)
		redirect_to :back
    end

    def unfollow
    	@user=User.find(params[:id])
    	current_user.stop_following(@user)
    	redirect_to :back
    end
end
