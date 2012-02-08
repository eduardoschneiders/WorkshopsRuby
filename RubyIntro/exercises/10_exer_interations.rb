# encoding: UTF-8

range = (0..100)
numGuess = rand(range.first..range.last)

puts "Digite um numero de #{range.first} até #{range.last}: "
numUser = gets.to_i	

while true
	if numUser != numGuess
		tip = numGuess > numUser ? "maior" : "menor"
		puts "Número errado, digite outro #{tip}: "
		numUser = gets.to_i
	else
		puts "Você acertou com o numero #{numGuess}"
		break
	end
end

#Mínimo de jogadas para 0 à 100
#0
#100
#50
#25
#12
#6
#3
#1