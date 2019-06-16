require "pry"

class Triangle
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @lengths = [length1, length2, length3]
  end 
  
  def lengths 
    @lengths 
  end 
  
  def valid?
    greaterthan = self.lengths.min > 0

    siderule = self.length1 + self.length2 > self.length3 && self.length1 + self.length3 > self.length2 && self.length2 + self.length3 > self.length1
     
     greaterthan && siderule
  end 
  
  
  def kind 
   # binding.pry
    if self.valid? 
       if self.lengths.uniq.length == 1 #self.length1 == self.length2 && self.length2 == self.length3
         :equilateral
       elsif self.lengths.uniq.length == 2 #self.length1 == self.length2  || self.length2 == self.length3 || self.length1 == self.length3 
         :isosceles
       else 
        :scalene 
       end 
     else 
       raise TriangleError
       resuce TriangleError => error 
        puts error.message
     end 
  end 
 
  class TriangleError < StandardError 
    def message 
      puts "The Triangle is not valid"
    end 
  end 
  
end
  
#  def get_married(person)
 #   self.partner = person
  #  if person.class != Person
   ##    raise PartnerError
    #  rescue PartnerError => error
     #     puts error.message
    #  end
  # else
  #    person.partner = self
  #  end