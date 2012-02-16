class Notice < ActiveRecord::Base
	validates :title, presence: true
	validates :text, presence: true
	validates_length_of :text, minimum: 4

	has_many :categorizations
	has_many :categories, 
		:through => :categorizations
end
