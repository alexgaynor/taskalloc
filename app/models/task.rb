class Task < ActiveRecord::Base

	has_and_belongs_to_many :groups
	#new db relation to user in replace of the polymorphic one above
	belongs_to :owner, class_name: "User", foreign_key: "owner_id"
	belongs_to :creator, class_name: "User", foreign_key: "creator_id"
	belongs_to :flaker, class_name: "User", foreign_key: "flaker_id"

end
