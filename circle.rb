class Circle
  def initialize(window, x, y, radius)
    @window = window
    @x = x
    @y = y
    @radius = radius
    @color = Gosu::Color::WHITE
  end


  def draw
    (0..350).each do |degree|
       @window.draw_line(point_x(degree), point_y(degree), @color, point_x(degree+10), point_y(degree+10), @color)
    end
  end

  def radians(degree)
    degree*Math::PI/180
  end

  def point_x(degree)
    (Math::cos(radians(degree)) * @radius) + @x
  end

  def point_y(degree)
    (Math::sin(radians(degree)) * @radius) + @y
  end
  

end
