class Client < ActiveRecord::Base
	has_many :orders
	validates :name, presence: true
	validates :email, presence: true, format: {with: /\w+@gmail\.com/}, uniqueness: true
	validates :state, inclusion: {in: %w[rs sc pr], allow_nil: true}
	validates :age,  numericality: {greater_than: 17, only_integer: true, allow_nil: true}
	validates :password,  presence: true,  confirmation: true
end
