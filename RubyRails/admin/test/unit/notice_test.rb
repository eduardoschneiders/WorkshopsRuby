require 'test_helper'

class NoticeTest < ActiveSupport::TestCase
	test "validates presence of title" do
		notice = create title: nil
		assert ! notice.valid?, "notice should be invalid"
		assert notice.errors[:title].any?
	end

	test "validates presence of text" do
		notice = create text: nil
		assert ! notice.valid?, "notice should be invalid"
	end

	test "validates length of text" do
		notice = create text: "abc"
		assert ! notice.valid?, "notice should be invalid"
		assert notice.errors[:text].any?
	end

	private
	    def create options = {}
	      notice = Notice.create({
	        :title => "title",
	        :text => "Loren Ipsun"
	      }.merge(options))
	    end
end
