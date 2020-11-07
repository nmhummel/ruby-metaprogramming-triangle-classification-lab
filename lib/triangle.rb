require 'pry'
class Triangle

  attr_accessor :s_1, :s_2, :s_3

  def initialize(s_1, s_2, s_3)
    @s_1 = s_1
    @s_2 = s_2
    @s_3 = s_3
  end

  def kind
    #side > 0
    if 
      @s_1 + @s_2 <= @s_3 || @s_2 + @s_3 <= @s_1 || @s_1 + @s_3 <= @s_2
      @s_1 + @s_2 + @s_3 <= 0
      # two sides added are less than than length of third side ==> not a triangle
      raise TriangleError
    elsif
      @s_1 == @s_2 && @s_1 == @s_3 && @s_2 == @s_3
      :equilateral 
    elsif
      (@s_1 == @s_2) || (@s_2 == @s_3) || (@s_3 == @s_1)
      :isosceles
    elsif 
      (@s_1 != @s_2) && (@s_2 != @s_3) && (@s_3 != @s_1)
      :scalene
    end
    # returns type as a symbol
  end

  class TriangleError < StandardError
    def message
      puts "That's not a triangle, mate. Go back to grade school!"
    end
  end

#binding.pry
end



# side > 0

# s_1 + s_2 > s_3
# s_2 + s_3 > s_1
# s_1 + s_3 > s_2

# equilateral
  # s_1 == s_2 && s_1 == s_3

# isosceles
  # s_1 == s_2 || s_3
  # s_2 == s_1 || s_3
  # s_3 == s_1 || s_2


  