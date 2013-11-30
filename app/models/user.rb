class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # set the has_and_belongs_to_many relationship with Groups
  has_and_belongs_to_many :groups


  # set the has_many relationships of Users to Tasks
  has_many :ownertasks, class_name: "Task", foreign_key: "owner_id"
  has_many :creatortasks, class_name: "Task", foreign_key: "creator_id"
  has_many :flakertasks, class_name: "Task", foreign_key: "flaker_id"
end
