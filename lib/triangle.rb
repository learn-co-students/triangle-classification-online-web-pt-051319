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
  
  def is_triangle?
    first_side + second_side > third_side && first_side + third_side > second_side && second_side + third_side > first_side
  end   
  
  def triangle_inequality?
    self.sides.include?(0) || self.sides.any? { |side| side < 0 } 
  end   
  
  class TriangleError < StandardError
  end
  
  
  def kind 
    case  
    when self.is_triangle? == false 
      raise TriangleError
    when self.triangle_inequality?
      raise TriangleError
    when self.sides.uniq.length == 1
      :equilateral
    when self.sides.uniq.length == self.sides.length 
     :scalene 
    when self.sides.uniq.length == 2 
     :isosceles 
    end  
  end 

end
