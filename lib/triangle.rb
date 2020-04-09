

class Triangle

  def initialize( a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    # create an if statement that takes into account the Triangle inequality theorem
    triangle_inequality = ((@a + @b) < @c) || ( (@a + @c) < @b) || ( (@b + @c) < @a)
    zero_length = @a == 0 || @b == 0 || @c ==0
    if
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
      if @a == @b && @b == @c
        :equilateral
      elsif (@a == @b && @a != @c && @b != @c) || (@b == @c && @b != @a && @c != @a) || (@a == @c && @a != @b && @c != @b)
        :isosceles
      else
        :scalene
      end
  end


  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle is greater than the lenght of the third side"
    end
  end



end
