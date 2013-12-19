class API::TasksController < ApplicationController
	# UNCOMMENT BELOW WHEN WANT TO MAKE JSON API SECURE
	# before_filter :authenticate_user!
	def index
		render json: Task.all
	end

	def show
		render json: Task.find(params[:id])
	end

	def create
		task = Task.create(safe_params)
		render json: task, status: 201
	end

	def update
		task = Task.find(params[:id])
		task.update_attributes(safe_params)
		render nothing: true, status: 204
	end

	def destroy
		task = Task.find(params[:id])
		task.destroy
		render nothing: true, status: 204
	end

	private

	def group
	  	@group ||= Group.find(params[:id])
	end

	def safe_params
		params.require(:task).permit(:name, :description, :priority, :category, :cost, :start_location, :task_location, :end_location, :estimated_time, :total_time, :due_date, :started, :completed, :passes, :karma_value, :accepted_time, :completed_time, :group_id, :creator_id, :owner_id, :flaker_id)
	end

end