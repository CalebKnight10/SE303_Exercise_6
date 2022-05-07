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
  def draw_dark_button
    paint(label_text, x_coordinate, y_coordinate, foreground_color - 10, '#111111')
  end
end

class LightMode < Button 
  def draw_light_button
    paint(label_text, x_coordinate, y_coordinate, foreground_color + 10, '#E0E0E0')
  end
end
