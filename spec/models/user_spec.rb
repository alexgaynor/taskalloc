require 'spec_helper'

# email, password, username, firstname, lastname, phone_num, tot_karma, tot_flakes, 

describe User do
  
	before(:each) do
		@user = User.new
	end

	it "should have a email" do
		@user.email = "alex@gmail.com"
		@user.email.should == "alex@gmail.com"
	end

	it "should have a password" do
		@user.password = "password"
		@user.password.should == "password"
	end

	it "should have a username" do
		@user.username = "alex123"
		@user.username.should == "alex123"
	end

	it "should have a firstname" do
		@user.firstname = "Alex"
		@user.firstname.should == "Alex"
	end

	it "should have a lastname" do
		@user.lastname = "Smith"
		@user.lastname.should == "Smith"
	end

	it "should have a phone_num" do
		@user.phone_num = 1234567890
		@user.phone_num.should == 1234567890
	end

	it "should have a tot_karma" do
		@user.tot_karma = 10
		@user.tot_karma.should == 10
	end

	it "should have a tot_flakes" do
		@user.tot_flakes = 4
		@user.tot_flakes.should == 4
	end

	it "should have a tot_karma integer" do
		@user.tot_karma = 10
		@user.tot_karma.should be_kind_of(Integer)
	end

	it "should have a tot_flakes integer" do
		@user.tot_flakes = 4
		@user.tot_flakes.should be_kind_of(Integer)
	end

	it "should be invalid without an email and password" do
		@user.should have(1).error_on(:email)
		@user.should have(1).error_on(:password)
		@user.should_not be_valid
	end

	it "should have and belong to many groups" do
		t = User.reflect_on_association(:groups)
		t.macro.should == :has_and_belongs_to_many
	end

	# test for foreign key
	it "should have many creator groups" do
		t = User.reflect_on_association(:creatorgroups)
		t.macro.should == :has_many
	end

	# test for foreign key
	it "should have many owner tasks" do
		t = User.reflect_on_association(:ownertasks)
		t.macro.should == :has_many
	end

	# test for foreign key
	it "should have many creator tasks" do
		t = User.reflect_on_association(:creatortasks)
		t.macro.should == :has_many
	end

	# test for foreign key
	it "should have many flaker tasks" do
		t = User.reflect_on_association(:flakertasks)
		t.macro.should == :has_many
	end

end
