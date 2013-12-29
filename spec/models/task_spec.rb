require 'spec_helper'

# name, description, priority, category, cost, start_location, task_location, end_location, estimated_time, total_time, due_date, started, completed, passes, karma_value accepted_time, completed_time, group_id, creator_id, owner_id, flaker_id

describe Task do
 
	before(:each) do
		@task = Task.new
	end

	it "should have a task name" do
		@task.name = "milk"
		@task.name.should == "milk"
	end

	it "should have a task description" do
		@task.description = "get milk and cereal from whole foods"
		@task.description.should == "get milk and cereal from whole foods"
	end

	it "should have a priority level" do
		@task.priority = 3
		@task.priority.should == 3
	end

	it "should have a priority level as an integer" do
		@task.priority = 3
		@task.priority.should be_kind_of(Integer)
	end	

	it "should have a category" do
		@task.category = "groceries"
		@task.category.should == "groceries"
	end

	it "should have a cost" do
		@task.cost = 5
		@task.cost.should == 5
	end

	it "should have a cost as a number" do
		@task.cost = 5
		@task.cost.should be_kind_of(Integer)
	end

	it "should have a start location" do
		@task.start_location = "902 Broadway"
		@task.start_location.should == "902 Broadway"
	end

	it "should have a task location" do
		@task.task_location = "100 Lexington"
		@task.task_location.should == "100 Lexington"
	end

	it "should have an end location" do
		@task.end_location = "260 4th St"
		@task.end_location.should == "260 4th St"
	end

	it "should have an estimated time of completion" do
		@task.estimated_time = 30
		@task.estimated_time.should == 30
	end

	it "should have an estimated time as an integer" do
		@task.estimated_time = 30
		@task.estimated_time.should be_kind_of(Integer)
	end

	it "should have a due date" do
		due_datetime = DateTime.new
		@task.due_date = due_datetime
		@task.due_date.should == due_datetime
	end

	it "should have a started boolean" do
		@task.started = true
		@task.started.should == true
	end

	it "should have a completed boolean" do
		@task.completed = false
		@task.completed.should == false
	end

	it "should have a number of passes" do
		@task.passes = 2
		@task.passes.should == 2
	end

	it "should have a number of passes as an integer" do
		@task.passes = 2
		@task.passes.should be_kind_of(Integer)
	end

	it "should have a karma value" do
		@task.karma_value = 10
		@task.karma_value.should == 10
	end

	it "should have a karma value as an integer" do
		@task.karma_value = 2
		@task.karma_value.should be_kind_of(Integer)
	end

	it "should have an accepted time of task" do
		@accepted_datetime = DateTime.new(2013,12,28,11,00,00)
		@task.accepted_time = @accepted_datetime
		@task.accepted_time.should == @accepted_datetime
	end

	it "should have a completed time of task" do
		@completed_datetime = DateTime.new(2013,12,28,11,30,00)
		@task.completed_time = @completed_datetime
		@task.completed_time.should == @completed_datetime
	end

	# review this test
	it "should have a total time of completion from completed time minus the accepted time" do
		@accepted_datetime = DateTime.new(2013,12,28,11,00,00)
		@completed_datetime = DateTime.new(2013,12,28,11,30,00)
		total_time_complete = ((@completed_datetime - @accepted_datetime) * 24 * 60).to_i
		@task.total_time = total_time_complete
		@task.total_time.should == total_time_complete
	end

	it "should have an total time as an integer" do
		@task.total_time = 30
		@task.total_time.should be_kind_of(Integer)
	end

	it "should have group id" do
		@task.group_id = 1
		@task.group_id.should == 1
	end

	it "should have a creator id" do
		@task.creator_id = 2
		@task.creator_id.should == 2
	end

	it "should have a owner id" do
		@task.owner_id = 3
		@task.owner_id.should == 3
	end

	it "should have a flaker id" do
		@task.flaker_id = 4
		@task.flaker_id.should == 4
	end

	it "should belong to owner" do
		t = Task.reflect_on_association(:owner)
		t.macro.should == :belongs_to
	end

	it "should belong to creator" do
		t = Task.reflect_on_association(:creator)
		t.macro.should == :belongs_to
	end

	it "should belong to flaker" do
		t = Task.reflect_on_association(:flaker)
		t.macro.should == :belongs_to
	end

	it "should have and belong to many groups" do
		t = Task.reflect_on_association(:groups)
		t.macro.should == :has_and_belongs_to_many
	end

end
