# encoding: UTF-8

def times num

	for i in 1..num do
		yield
	end
	
end

times(3){ puts "Ho!" }