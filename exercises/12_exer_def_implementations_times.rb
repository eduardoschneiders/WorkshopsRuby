# encoding: UTF-8

def times num
	num.times{yield}
end

times(3){ puts "Ho!" }