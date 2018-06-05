class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def isosceles?
    if self.side1 == self.side2 && self.side1 != self.side3
      true
    elsif self.side1 == self.side3 && self.side1 != self.side2
      true
    elsif self.side2 == self.side3 && self.side2 != self.side1
      true
    else
      false
  end

  def kind
    if self.side1 != self.side2 && self.side2 != self.side3 && self.side3 != self.side1
      :scalene
    elsif self.side1 == self.side2 && self.side2 == self.side3
      :equilateral
    elsif self.isosceles?
      :isosceles
    end
  end
end
