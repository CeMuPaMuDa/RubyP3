# frozen_string_literal: true

class Vector
  include Math
  def initialize(x1, y1, x2, y2)
    @a = Point.new(x1, y1)
    @b = Point.new(x2, y2)
  end

  def distance
    "Paccтояние между точками: #{sqrt((@b.x - @a.x)**2 + (@b.y - @a.y)**2)}"
  end

  class Point
    def initialize(x, y)
      @x = x
      @y = y
    end
    attr_accessor :x, :y
  end
end
