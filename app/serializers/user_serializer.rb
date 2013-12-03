class UserSerializer < ActiveModel::Serializer
	attributes :id, :email, :username, :firstname, :lastname, :tot_karma, :tot_flakes
end