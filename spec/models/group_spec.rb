require 'spec_helper'

# name, description, group_type, address_street, address_zipcode, address_state, creator_id

describe Group do

	before(:each) do
		@group = Group.new
	end

	it "should have a group name" do
		@group.name = "The Smiths"
		@group.name.should == "The Smiths"
	end

	it "should have a group description" do
		@group.description = "A loving family of four"
		@group.description.should == "A loving family of four"
	end

	it "should have a group type" do
		@group.group_type = "family"
		@group.group_type.should == "family"
	end

	it "should have a street address" do
		@group.address_street = "902 Broadway"
		@group.address_street.should == "902 Broadway"
	end

	it "should have a address zipcode" do
		@group.address_zipcode = 10017
		@group.address_zipcode.should == 10017
	end

	it "should have a valid address zipcode" do
		@group.address_zipcode = 10017
		@group.address_zipcode.should be_kind_of(Integer)
	end

	it "should have a address state" do
		@group.address_state = "NY"
		@group.address_state.should == "NY"
	end

	it "should have a group creator id" do
		@group.creator_id = 1
		@group.creator_id.should == 1
	end

	it "should have and belong to many users" do
		t = Group.reflect_on_association(:users)
		t.macro.should == :has_and_belongs_to_many
	end

	# test for foreign key
	it "should belong to creator user" do
		t = Group.reflect_on_association(:creator)
		t.macro.should == :belongs_to
	end

	it "should have many tasks" do
		t = Group.reflect_on_association(:tasks)
		t.macro.should == :has_many
	end

end
