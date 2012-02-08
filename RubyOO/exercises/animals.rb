# encoding: UTF-8

class Animal
	@@fastest = nil
	@@slowest = nil

	attr_reader :species, :max_speed, :max_age

	def initialize species, max_speed, max_age
		@species = species
		@max_speed = max_speed
		@max_age = max_age

		if !@@fastest
			@@fastest = @@slowest = self
		elsif max_speed > @@fastest.max_speed
			@@fastest = self
		elsif max_speed < @@slowest.max_speed
			@@slowest = self
		end
	end

	def self.fastest
		@@fastest
	end

	def self.slowest
		@@slowest
	end
end

Puma = Animal.new("dog", 100, 12)
turtle = Animal.new("turtle", 0.50, 32)
dog = Animal.new("Puma", 4050, 2)
Lion = Animal.new("Lion", 300, 1)

puts "Idade máxima do Lion: #{Lion.max_age}"
puts "Animal mais lento: #{Animal.slowest.species}, com a velocidade: #{Animal.slowest.max_speed} e sua idade #{Animal.slowest.max_age}"
puts "Animal mais rápido: #{Animal.fastest.species}, com a velocidade: #{Animal.fastest.max_speed} e sua idade #{Animal.fastest.max_age}"