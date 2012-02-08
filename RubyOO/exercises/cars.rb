class Cars
	attr_writer :brand, :speed
	attr_reader :brand, :speed

	def initialize *args
		@brand, @speed = args
	end
	def ms_speed
		speed / 3.6
	end
end

#Instanciando a class Cars
firstCar = Cars.new "Ferrari", 100
firstCar.speed = 1098

puts "Brand: #{firstCar.brand}, Speed: #{firstCar.speed}, ms: #{firstCar.ms_speed} \n\n"

#Instanciando a class Cars em massa
puts "Cadastro de Carros em massa: "
cars = Array.new()

for i in 1..2 do 
	puts "Type brand: "
	brand = gets.chomp

	puts "Type speed: "
	speed = gets.to_i

	cars[i] = Cars.new brand, speed	

	puts "Brand: #{cars[i].brand}, Speed: #{cars[i].speed}, ms: #{cars[i].ms_speed}"
end

class order
	@@status={
		
		1 => "order",
		2 => "paid"
	}

	def status_name :status
		@@status[status]