class Triangle
  
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    if @x <= 0 || @y <= 0 || @z <= 0
      raise TriangleError
    elsif @x >= @y + @z || @y >= @x + @z || @z >= @y + @x
      raise TriangleError
    elsif @x > 0 && @y > 0 && @z > 0
      if @x == @y && @x == @z && @y == @z
        :equilateral
      elsif (@x == @y) || (@x == @z) || (@z == @y)
        :isosceles
      else
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError
  end
  
end
