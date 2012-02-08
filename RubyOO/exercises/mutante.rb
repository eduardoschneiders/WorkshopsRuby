class Mutante
	attr_accessor :nome, :idade, :poder, :grupo
end

firstMutante = Mutante.new

firstMutante.nome = "Eduardo"
firstMutante.idade = 21
firstMutante.poder = "Sugar energia"
firstMutante.grupo = "X Men"

puts "Nome: #{firstMutante.nome}, idade: #{firstMutante.idade}, poder: #{firstMutante.poder}, grupo: #{firstMutante.grupo}"

secondMutante = Mutante.new

secondMutante.nome = "Vampira"
secondMutante.idade = 21
secondMutante.poder = "Sugar energia"
secondMutante.grupo = "X Men"

puts "Nome: #{secondMutante.nome}, idade: #{secondMutante.idade}, poder: #{secondMutante.poder}, grupo: #{secondMutante.grupo}"
