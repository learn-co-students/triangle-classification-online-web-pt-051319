require 'pry'
class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    x = [a, b, c]
    if a <= 0 || b <= 0 || c <=0 || x.sort[0] + x.sort[1] <= x.sort[2]
      raise TriangleError
    else
    case
    when a == b && b == c
      @kind = :equilateral
    when a != b && a != c && b != c
      @kind = :scalene
    when x.sort[1] == x.sort[2] && x.sort[0] != x.sort[1] && x.sort[0] + x.sort[1] > x.sort[2]
      @kind = :isosceles
      end  
    end
  end  

  class TriangleError < StandardError
    def message
      "Get out of here, muggle shape!"
    end  
  end  

end
