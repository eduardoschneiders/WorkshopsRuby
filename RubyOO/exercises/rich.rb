# encoding: UTF-8

class Rich
	attr_accessor :name, :fortune, :age, :born, :companies
	
	def initialize *args
		@name, @fortune, @age, @born, @companies = args
	end

	def richer_than? other, year

		if other.class == self.class
			self.fortune[year] > other.fortune[year]
		else
			false
		end

	end
	
	def difference first_year, second_year
		(self.fortune[second_year]) - (self.fortune[first_year])
	end

end


gates = Rich.new "Gates", {2011 => 56, 2010 => 53, 2009 => 40}, 21, "Taquara", %w{TCA Azaléia}
mittal = Rich.new "Mittal",{2011 => 31.1, 2010 => 28.7, 2009 => 19.3}, 4_000, 50, "Santa Cruz do Sul", %w{Azaléia Afubra}
eike = Rich.new "eike", {2011 => 30, 2010 => 27}, 50, "Santa Cruz do Sul", %w{Azaléia Afubra}
slim = Rich.new "slim", {2011 => 74, 2010 => 53.5, 2009 => 35}, 50, "Santa Cruz do Sul", %w{Azaléia Afubra}

puts gates.difference 2009, 2011 
puts gates.richer_than? slim, 2010

gates.rank[2009]