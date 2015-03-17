class CompleteProfileController < ApplicationController

	def index
		@user = current_user
		@foundations = User.where(is_foundation: true)	
	end

	def save
		@user = current_user
		if @user.update(params.require(:user).permit(:email, :name))
			@user.update_attribute(:profile_completed?, true)
			flash[:notice] = "Post successfully created"
			redirect_to '/'
		else
			redirect_to complete_profile_path
		end
	end

end
