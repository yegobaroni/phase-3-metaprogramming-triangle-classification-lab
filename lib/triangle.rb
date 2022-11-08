class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1      
    @side2 = side2      
    @side3 = side3 
  end

  def valid_num?
    [@side1, @side2, @side3].all? { |num| num > 0}
  end

  def valid_triangle?
    @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
  end

  def kind
    try_error 
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 ||  @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end
  def try_error
    raise TriangleError unless valid_num? && valid_triangle?
  end
  
  class TriangleError < StandardError
    
  end
end
