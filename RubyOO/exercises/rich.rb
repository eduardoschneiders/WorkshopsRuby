# encoding: UTF-8

class Rich
	attr_accessor :name, :fortune, :age, :born, :companies
	
	def initialize *args
		@name, @fortune, @age, @born, @companies = args
	end

	def richer_than? other

		if other.class == self.class
			self.fortune > other.fortune
		else
			false
		end

	end

	def fortune year
		@fortune[year]
	end

end


gates = Rich.new "Gates", {2011 => 56}, 21, "Taquara", %w{TCA Azaléia}
mittal = Rich.new "Mittal",{2011 => 31.1}, 4_000, 50, "Santa Cruz do Sul", %w{Azaléia Afubra}
eike = Rich.new "eike", {2011 => 30}, 50, "Santa Cruz do Sul", %w{Azaléia Afubra}
slim = Rich.new "slim", {2011 => 74}, 50, "Santa Cruz do Sul", %w{Azaléia Afubra}

puts gates.fortune 2011
#puts eduardo.richer_than?  leoni
