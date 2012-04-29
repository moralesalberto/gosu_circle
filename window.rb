class Window < Gosu::Window
  def initialize
    super(800, 600, false)
    @circle = Circle.new(self, 100, 100, 30)
  end

  def draw
    @circle.draw
  end


end
