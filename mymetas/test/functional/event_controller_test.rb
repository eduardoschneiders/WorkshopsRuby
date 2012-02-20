require 'test_helper'

class EventsControllerTest < ActionController::TestCase

	setup do 
		@event = Event.create! title: "Some event", description: "description of event"
	end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "ul#events" do
			assert_select "li a[href=?]", event_path(@event)
		end
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
