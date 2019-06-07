require 'pry'

class Triangle

	attr_accessor :sides

	def initialize(*args)
		@sides = args
	end

	def kind

		triangle = @sides.inject(true) do |bool, side|
			bool = !bool ? bool : !(side <= 0 || @sides.sum(-side) <= side)
		end || @sides.length != 3

		if !triangle
			raise TriangleError
		elsif @sides.uniq.length == 1
			:equilateral
		elsif @sides.uniq.length == 2
			:isosceles
		elsif @sides.uniq.length == 3
			:scalene
		end

	end

	class TriangleError < StandardError

		def message
			"The sides don't form a trianlge"
		end

	end
end