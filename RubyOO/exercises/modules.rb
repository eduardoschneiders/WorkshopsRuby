#Ex. 
#1) Criar um modulo  movable que define as propriedades
#- initial_position (fixnum)
# - speed (fixnum)

# 2) criar um modulo timable que define propriedades
#time (fixnum)
#Implementar um metodo "position" que retorna a posição baseadano speed e no time

#3) criee uma classe Car que inclui os modulos

module Movable
	attr_accessor :initial_position, :speed
end

module Timable
	include Movable

	attr_accessor :time
	
	def position
		initial_position + speed*time
	end
end

class Car
	include Timable
end

ferrari = Car.new
ferrari.initial_position = 0
ferrari.speed = 300
ferrari.time = 10
puts ferrari.position #3_000
