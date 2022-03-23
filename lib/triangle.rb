class Triangle
  require 'pry'

  attr_accessor :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  binding.pry

  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      begin
        raise TriangleError
        end
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      begin
        raise TriangleError
        end
      elsif @side1 == @side2 && @side1 == @side3
        :equilateral
      elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        :scalene
      else 
        :isosceles
      end 
  end

  class TriangleError < StandardError
  end

  binding.pry
end
