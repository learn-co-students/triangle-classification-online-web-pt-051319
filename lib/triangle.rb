require 'pry'

class Triangle
  attr_accessor :first_side, :second_side, :third_side, :equilateral, :isosceles,:scalene
  #@@sides =[]
  
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
    @@sides = [first_side, second_side, third_side] 
  end 
    
  def sides
    @@sides 
  end 
  
  def kind 
    
    if self.sides.uniq.length == 1
      :equilateral
    elsif self.sides.uniq.length == self.sides.length #&& !self.sides.detect{|num| num.negative?} 
     :scalene
    elsif self.sides.uniq.length == 2 
     :isosceles 
   else 
     raise TriangleError
    end  
  end 
  

  
  class TriangleError < StandardError
    #"Your case violates one of the inequality rules for Triangles."
  end
end
