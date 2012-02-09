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
end

eduardo = Rich.new "Eduardo Matheus Schneiders", 5_000, 21, "Taquara", %w{TCA Azaléia}
leoni = Rich.new "Leoni Shinn Schneiders", 4_000, 50, "Santa Cruz do Sul", %w{Azaléia Afubra}

puts eduardo.richer_than?  leoni