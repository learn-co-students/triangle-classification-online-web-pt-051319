class Triangle
  attr_accessor :side_1, :side_2, :side_3
  # write code here
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    elsif @side_1+@side_2 <= @side_3 || @side_1+@side_3 <= @side_2 || @side_2+@side_3 <= @side_1
      raise TriangleError
    elsif @side_1 == @side_2 && @side_1 == @side_3
      type = :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      type = :isosceles
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      type = :scalene
    end
    return type
  end

  class TriangleError < StandardError

  end
end
