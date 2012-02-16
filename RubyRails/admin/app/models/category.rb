class Category < ActiveRecord::Base
	has_many :categorizations
	has_many :notices,
		:through :categorizations
end
