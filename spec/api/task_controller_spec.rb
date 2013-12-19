require 'spec_helper'
describe API::TasksController do
 
  # sample test for api 
  it "should be able to create a new record" do
    post :create, task_list_id: task_list.id,
      task: {
      	name: "Pick up groceries",
        description: "Pick up milk, eggs, cheese, onions, and carrots",
        task_location: Faker::Address.street_address,
        end_location: roomies.address_street,
        estimated_time: 123,
        total_time: 234,
        started: true,
        completed: false,
        creator_id: sunmi.id,
        owner_id: alex.id,
        passes: 0,
        group_id: roomies.id,
        priority: priorities[rand(0..2)],        
        category: categories[rand(0..3)],
        karma_value: 40,
        accepted_time: 123456,
        completed_time: 456789,
        cost: 50
      	}, format: :json
    response.should be_success
    json_response.should == {}
  end

end
