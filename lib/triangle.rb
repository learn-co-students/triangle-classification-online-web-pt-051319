require 'pry'

class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def valid?
    side_1 + side_2 > side_3 && side_2 + side_3 > side_1 && side_1 + side_3 > side_2
  end

  def equilateral?
    side_1 == side_2 && side_2 == side_3
  end

  def isosceles?
    side_1 == side_2 || side_2 == side_3 || side_1 == side_3
  end

  def scalene?
    side_1 != side_2 || side_2 != side_3 || side_1 != side_3
  end

  def kind
    unless valid?
      raise TriangleError
    end

    if equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
