class API::UsersController < ApplicationController
	# UNCOMMENT BELOW WHEN WANT TO MAKE JSON API SECURE
	# before_filter :authenticate_user!
	def index
		render json: User.all
	end

	def safe_params
		params.require(:user).permit(:email, :encrypted_password, :username, :firstname, :lastname, :phone_num, :tot_karma, :tot_flakes)
	end

end