class Hash
	#alias :+ :merge #funciona do mesmo jeito
	def + other_hash
		self.merge(other_hash)
	end

	def - other_hash
		self.reject{|k, v| other_hash[k] == v} #contrário select
	end

	def +@
		Hash[self.map{|k,v| [k.succ, v.succ]}]
	end
end

puts ({a:1} + {b:2}) #soma
puts ({a:1, b:2, c:3} - {b: 2}) #subtração
puts (+{b:1, c:2}) #Adição com junção