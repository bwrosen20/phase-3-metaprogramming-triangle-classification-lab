require "pry"

class Triangle
  
  attr_accessor :side1, :side2, :side3

  def initialize(side1,side2,side3)
      @side1=side1
      @side2=side2
      @side3=side3
  end

  def kind

    side_checker=if side1+side2<=side3
      true
    elsif side1+side3<=side2
      true
    elsif side2+side3<=side1
      true
    else
      false
    end

    triangle_array=[side1,side2,side3].uniq
  
      if triangle_array.include?(0) || side_checker
        puts "Error"

          begin
            raise TriangleError
            puts error.message
          end

      else

          if triangle_array.length==1
            :equilateral
          elsif triangle_array.length==3
            :scalene
          else
            :isosceles
          end

        end
    end



    class TriangleError < StandardError

        def message

          "you can't do that"
        end


    end



end
binding.pry