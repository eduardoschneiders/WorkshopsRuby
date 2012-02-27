require 'test_helper'

class EventTest < ActiveSupport::TestCase
	test "validates presence of elements of Event" do 

		event = Event.create title: nil
		assert ! event.valid?, "Event should be invalid by title"
		assert event.errors[:title].any?, "Event should be invalid by title"

		event = Event.create starts_at: nil
		assert ! event.valid?, "Event should be invalid by starts_at"
		assert event.errors[:starts_at].any?, "Event should be invalid by starts_at"
	
		event = Event.create ends_at: nil
		assert ! event.valid?, "Event should be invalid by ends_at"
		assert event.errors[:ends_at].any?, "Event should be invalid by ends_at"
	

		event = Event.create user_id: nil
		assert ! event.valid?, "Event should be invalid by user_id"
		assert event.errors[:user_id].any?, "Event should be invalid by user_id"

	end
end
