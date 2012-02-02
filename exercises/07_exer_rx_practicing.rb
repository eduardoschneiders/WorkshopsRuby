rx = /^(w)[o|a]rl?[d|m]?$/			#Validate war, word, world

puts "war".match rx
puts "word".match rx
puts rx.match "world"


puts "baaa" =~ /^b?a{0,3}$/ #Can have letter 'b' optional, have 1 to 3 'a' 
puts "b aaa" =~ /^b? ?a{3}$/ #Can have letter 'b' optional, Can have ' ' optional, have 3 'a' 

puts "95630000" =~ /^\d{5}[-|.]?\d{3}$/	#Start with 5 num, have - or .  optional, and finish with 3 num


#Correct last name => optional 'C' of 'S', h, i optional, n, e or a, + iders

correctLastName = "<new>Schneiders</new>"
rx = /[S|C]hi?n[e|a]iders/	

name = "Eduardo Matheus Shnaiders"
puts name.gsub(rx, correctLastName)

name = "Eduardo Matheus Chinaiders"
puts name.gsub(rx, correctLastName)

name = "Eduardo Matheus Shineiders"
puts name.gsub(rx, correctLastName)