class API::GroupsController < ApplicationController
	# UNCOMMENT BELOW WHEN WANT TO MAKE JSON API SECURE
	# before_filter :authenticate_user!
	def index
		render json: Group.all
	end

	def safe_params
		params.require(:group).permit(:name, :description, :group_type, :address_street, :address_zipcode, :address_state, :creator_id)
	end
end