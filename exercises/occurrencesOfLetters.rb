phrase = 'aaaaa'
phrase = phrase.downcase
puts phrase.count(phrase[0]) == phrase.size


qnt = Hash.new()
phrase.each_char do |key|
	qnt[key] = phrase.count(phrase[key])	
end

qnt.keys.each do |key|
	puts "#{key} - #{qnt[key]}"
end
