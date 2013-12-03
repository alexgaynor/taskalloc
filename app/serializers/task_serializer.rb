class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :priority, :category, :cost, :start_location, :task_location, :end_location, :estimated_time, :total_time, :due_date, :started, :completed, :passes, :karma_value, :accepted_time, :completed_time, :group_id, :creator_id, :owner_id, :flaker_id
end