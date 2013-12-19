class API::GroupsController < ApplicationController
	# UNCOMMENT BELOW WHEN WANT TO MAKE JSON API SECURE
	# before_filter :authenticate_user!
	def index
		render json: Group.all
	end

	def show
		render json: Group.find(params[:id])
	end

	def create
		group = Group.create(safe_params)
		render json: group, status: 201
	end

	def update
		group = Group.find(params[:id])
		group.update_attributes(safe_params)
		render nothing: true, status: 204
	end

	def destroy
		group = Group.find(params[:id])
		group.destroy
		render nothing: true, status: 204
	end

	private
	def safe_params
		params.require(:group).permit(:name, :description, :group_type, :address_street, :address_zipcode, :address_state, :creator_id)
	end
end