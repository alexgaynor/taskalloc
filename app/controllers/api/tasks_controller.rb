class API::TasksController < ApplicationController
	# UNCOMMENT BELOW WHEN WANT TO MAKE JSON API SECURE
	# before_filter :authenticate_user!
	def index
		render json: Task.all
	end


	def safe_params
		params.require(:task).permit(:name, :description, :priority, :category, :cost, :start_location, :task_location, :end_location, :estimated_time, :total_time, :due_date, :started, :completed, :passes, :karma_value, :accepted_time, :completed_time, :group_id, :creator_id, :owner_id, :flaker_id)
	end

end