class Group < ActiveRecord::Base


	has_and_belongs_to_many :users
	belongs_to :creatorgroups, class_name: "User", foreign_key: "creator_id"
	has_many :tasks
	
end
