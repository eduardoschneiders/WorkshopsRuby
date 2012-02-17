require 'test_helper'

class NoticesControllerTest < ActionController::TestCase

	setup do 
		@polemicNotice = Notice.create! title: "The polemic Notice", text: "aaaaaaaaaaaaa"
	end
	test "should get index" do
		get :index
		assert_response :success
		assert_select "ul#notices" do
			assert_select "li a[href=?]", notice_path(@polemicNotice)
		end
	end

	test "should get show" do
		get :show
		assert_response :success
	end
end
