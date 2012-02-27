class Event < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: true
	validates :starts_at, presence: true
	validates :ends_at, presence: true
	validates :user_id, presence: true
end
