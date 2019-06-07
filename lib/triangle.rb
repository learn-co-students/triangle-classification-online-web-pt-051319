class Triangle
  attr_accessor :first_side, :second_side, :third_side, :equilateral, :isosceles,:scalene
  @sides = []
  
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
    @sides << self 
  end 
  
  def kind 
    if self.sides.uniq.length == 1
      :equilateral
    elsif self.sides.uniq.length == self.sides.length
     :scalene
    elsif self.sides.uniq.length == 2 
     :isosceles 
   else 
      raise TriangleError
    end 
  end 
  
  
  def sides
    @sides 
  end 
  
  class TriangleError < StandardError
    # triangle error code
  end
end
