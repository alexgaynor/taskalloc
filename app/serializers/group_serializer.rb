class GroupSerializer < ActiveModel::Serializer
	attributes :id, :name, :description, :group_type, :address_street, :address_zipcode, :address_state, :creator_id
end