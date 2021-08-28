class Cube
  attr_accessor :x, :y, :z, :length
def initialize(base_coord, length)
  @x, @y, @z = base_coord*
  @length = length
end

def apexs
  a = [x,y,z]
  b = [x+length, y,z]
  c = [x,y+length,z]
  d = [x+length,y+length,z]
  
end

end

cube = Cube.new([0, 0, 0], 3)
p cube.apexs
