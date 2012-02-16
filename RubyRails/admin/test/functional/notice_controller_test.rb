require 'test_helper'

class NoticeControllerTest < ActionController::TestCase

	setup do 
		@polemicNotice = Notice.new title: "The polemic Notice"
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
