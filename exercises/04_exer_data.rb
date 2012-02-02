# encoding: UTF-8
puts "Escreva uma data:"
data = gets.chomp		#Clear the var

data = data.split("/")	#Cut the var by any '/'
data = data.reverse		#make a reverse
data = data.join("-")	#join with a '-'

puts data