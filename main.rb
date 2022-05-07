class Button
  attr_accessor: :label_text, :x_coordinate, :y_coordinate, :foreground_color

  def initialize
    @label_text = label_text
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @foreground_color = foreground_color
  end
end

class DarkMode < Button 

  def set_foreground
    foreground_color - 10
  end

  def set_location(x_coordinate, y_coordinate)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
  end

  def choose_color(color)
    color
  end

  def draw_button
    paint(label_text, set_location, set_foreground, choose_color(color))
  end
end

class LightMode < Button 

  def set_foreground
    foreground_color + 10
  end

  def set_location(x_coordinate, y_coordinate)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
  end

  def choose_color(color)
    color
  end

  def draw_button
    paint(label_text, set_location,  set_foreground, choose_color(color))
  end
end

dark_button = DarkMode.new
light_button = LightMode.new

dark_button.set_location(10, 10)
dark_button.choose_color('#111111')

light_button.choose_color('#E0E0E0')
light_button.set_location(20, 20)

dark_button.draw_button
light_button.draw_button
