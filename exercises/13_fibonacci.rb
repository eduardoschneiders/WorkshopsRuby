# encoding: UTF-8

def fib num
	if num <= 1
		return num
	else
		return fib(num - 1) + fib(num -2)
	end
end

puts "Digite um numero para calcular seu fibonaci"
num = gets.to_i
puts fib num