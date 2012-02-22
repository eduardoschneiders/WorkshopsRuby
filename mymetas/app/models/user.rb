class User < ActiveRecord::Base
	has_many :events
	
	def self.auth data
		find_by_email_and_password data[:email], data[:password]
	end
end
