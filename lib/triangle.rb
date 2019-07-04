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
    # x=y = Z - :isosceles

    # z < x+7 - :scalene
    # x, y, z - :equilateral
    # x=y = Z - :isosceles



  end

  class TriangleError < StandardError
  end

end
