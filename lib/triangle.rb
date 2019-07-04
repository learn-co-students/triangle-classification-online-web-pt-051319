require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  @sides = []

  def initialize (x, y, z)
    @x = x
    @y = y
    @z = z
    @sides = @x, @y, @z
  end

  def all
    @sides
  end

  def kind
  end


    # z < x+7 - :scalene

    # x=y = Z - :isosceles
    binding.pry

  class TriangleError < StandardError
  end

end
