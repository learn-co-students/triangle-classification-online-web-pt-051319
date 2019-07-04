require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  @sides = []
  @new_array = []

  def initialize (x, y, z)
    @side1 = x
    @side2 = y
    @side3 = z
    @sides = @side1, @side2, @side3
  end

  def all
    @sides
  end

  def max_length
    #longest side of triangle
    all.sort.last
  end

  def side?
    #not a triange if any side = 0
    false if all.any?{|side| side <= 0}
  end

  def valid?
  (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
  end

  def kind
    if side? == false || valid? == false
        raise TriangleError

    elsif all[0] == all[1] && all[1] == all[2]
      :equilateral

    elsif all[1] == all[2] || all[0] == all[2] || all[0] == all[1]
      :isosceles

    elsif all[0] != all[1] && all[1] != all[2]
      :scalene

    end

  end


  class TriangleError < StandardError
    def message
      "Parameters viloate laws of triangle inequality"
    end
  end

end
