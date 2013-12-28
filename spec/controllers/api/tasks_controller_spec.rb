# require 'spec_helper'
# describe API::TasksController do
 
#   # sample test for api 
#   describe TasksController do
#     describe "GET index" do
#       it "has a 200 status code" do
#         get :index
#         expect(response.status).to eq(200)
#       end
#     end
#   end
# end

require 'spec_helper'
describe API::TasksController do
 
  # sample test for api 
  it "should be able to create a new record" do
    post :create, task: {
      	name: "Pick up groceries",
        description: "Pick up milk, eggs, cheese, onions, and carrots",
        task_location: Faker::Address.street_address,
        end_location: Faker::Address.street_address,
        estimated_time: 123,
        total_time: 234,
        started: true,
        completed: false,
        creator_id: 2,
        owner_id: 3,
        passes: 0,
        group_id: 1,
        priority: "urgent",        
        category: "errand",
        karma_value: 40,
        accepted_time: 123456,
        completed_time: 456789,
        cost: 50
      	}, format: :json
    response.should be_success
    # json_response.should == {}
  end

end
