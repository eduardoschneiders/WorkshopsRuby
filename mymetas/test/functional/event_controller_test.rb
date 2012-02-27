require 'test_helper'

class EventsControllerTest < ActionController::TestCase

	setup do 
		event = Event.create! title: "Some event", description: "description of event", starts_at: 123, ends_at: 123, user_id: 1
	end

   test "should get index" do
     get :index
     assert_response :success
  #     assert_select "ul#events" do
		# 	assert_select "li a[href=?]", event_path(@event)
		# end
   end

  # test "should get show" do
  #   get :show
  #   assert_response :success
  # end

end
