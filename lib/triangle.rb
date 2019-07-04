require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  sides = []

  def initialize (x, y, z)
    binding.pry
    @x = x
    @y = y
    @z = z
    binding.pry
  end

  def kind
      # x, y, z - :equilateral
      :isosceles if @x = @y && @y == @z


    # z < x+7 - :scalene

    # x=y = Z - :isosceles
    binding.pry



  end

  class TriangleError < StandardError
  end

end
