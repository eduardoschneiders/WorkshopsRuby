def point x, y
	Point.new(x,y)
end

def circle x, y, r
	Circle.new(point(x,y),r)
end


class Point
	attr_reader :x, :y
	def initialize x, y
		@x = x
		@y = y
	end

	def distance point 
		xd = (x - point.x).abs
		yd = (y - point.y).abs
		Math.sqrt(xd **2 + yd ** 2)
	end

	def === circle
		circle.include?(self)
	end
	
end

class Circle
	attr_reader :center, :radius

	def x
		center.x
	end

	def y
		center.y
	end

	def <=> circle
		area <=> circle.area
	end

	def diameter
		radius*2
	end

	def intersect? circle
		distance = (circle.center.distance self.center)
		sum = radius + circle.radius

		distance < sum
	end

	def inside? circle
		
	end

	def succ
		Circle.new((point x + 1, y + 1), (radius + 1))
	end

	def initialize center, radius
		@center = center
		@radius = radius
	end

	def area
		radius * Math::PI
	end

	def bounds
		(0..360).map do |gr|
			x = center.x + radius * Math.sin(gr)
			y = center.y + radius * Math.cos(gr)
			Point.new x, y
		end
	end

	def include? point
		center.distance(point) < radius
	end
end

##CREATING POINT AND CIRCLES##
#point = Point.new 0, 0
#circle = Circle.new point, 10
#puts circle.area
#puts circle.bounds



##DISTANCE##
#firstPoint = Point.new 0, 0
#secondPoint = Point.new 10, 1

#puts firstPoint.distance secondPoint

##INCLUDES##
#point = Point.new 0, 0
#circle = Circle.new point, 10
#outPoint = Point.new 9, 0

#puts circle.include? outPoint

##INCLUDES##
#center = Point.new(450, 350)
#circle = Circle.new center, 300
#p1 = Point.new(350, 250)
#p2 = Point.new(700, 50)

#puts circle.include? p1
#puts circle.include? p2

##INCLUDES == ##
#center = Point.new(0, 0)
#circle = Circle.new(center, 10)

#point = Point.new(9, 0)

#puts point.=== circle

##RETURN THE X or Y OF CIRCLE
#circulo = circle(0, 2, 10)
#puts circulo.y

##SORT BETWEEN CIRCLES
#circles = [
#  circle(200, 100, 100),
#  circle(100, 200, 100),
#  circle(100, 100, 200)
#]

#circles.sort_by &:x
#circles.sort_by &:y
#circles.sort_by &:radius
#circles.sort

##DIAMETER##
#puts circle(100, 100, 300).diameter

##INTERSECT##
#puts (circle(0, 0, 3).intersect? circle(0, 4, 2))

##TO_A##
#c1 = circle(0,0,0) 
#c2 = circle(10,10,10)

#puts ((c1..c2).to_a).inspect

##INSIDE?##

c1 = circle(0,0,0) 
c2 = circle(10,10,10)

puts c1.inside? c2