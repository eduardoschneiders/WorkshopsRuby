# encoding: UTF-8

class Rich
	@@allRich = []
	attr_accessor :name, :fortune, :age, :born, :companies
	
	def initialize *args
		@name, @fortune, @age, @born, @companies = args
		@@allRich << self
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

	def rank year
		richests = @@allRich.sort{|a,b| b.fortune[year] <=> a.fortune[year]}
		richests.index(self)+1
	end

	def self.est year
		richest = @@allRich.sort{|a,b| a.fortune[year] <=> b.fortune[year]}
		richest.last
	end

	def self.rank year
		rich = @@allRich.sort {|a,b| a.fortune[year] <=> b.fortune[year]}
		rich
	end

	def self.younger
		(@@allRich.sort{|a,b| a.age <=> b.age}).first
	end

	def self.older
		(@@allRich.sort{|a,b| a.age <=> b.age}).last
	end

	def forecast year 

		firstYear = fortune.keys.min
		lastYear = fortune.keys.max

		avg = difference(firstYear, lastYear) / 2.0
		
		fortune[lastYear] + avg * (year-lastYear) 
	end
end


gates = Rich.new "Gates", {2011 => 57, 2010 => 53, 2009 => 50}, 21, "Taquara", %w{TCA Azaléia}
mittal = Rich.new "Mittal",{2011 => 31.1, 2010 => 28.7, 2009 => 19.3}, 25, "Santa Cruz do Sul", %w{Azaléia Afubra}
eike = Rich.new "eike", {2011 => 30, 2010 => 27}, 26, "Santa Cruz do Sul", %w{Azaléia Afubra}
slim = Rich.new "slim", {2011 => 04, 2010 => 53.5, 2009 => 35}, 30, "Santa Cruz do Sul", %w{Azaléia Afubra}

#puts gates.difference 2009, 2011 
#puts gates.richer_than? slim, 2010

puts gates.forecast 2013