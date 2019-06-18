require 'pry'

class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def illegal?
    if side_a==0||side_b==0||side_c==0
      true
    elsif side_a<0 ||side_b<0||side_c<0
      true
  elsif side_a+side_b<=side_c||side_b+side_c<=side_a||side_a+side_c<=side_b
     true
    else
      false
    end
  end
   
  
  def kind

    if illegal?
      begin raise TriangleError
       puts error.message
      end
    elsif side_a==side_b && side_b==side_c
       :equilateral
     elsif side_a==side_b || side_b==side_c ||side_a==side_c
         :isosceles
     else
      :scalene
    #end
    end
    
  end
  
 
  class TriangleError < StandardError
    def message
      puts "not a triangle"
    end
  end
  
end
