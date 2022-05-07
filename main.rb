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
    paint(label_text, set_location(x_coordinate, y_coordinate), set_foreground, choose_color('#111111')
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
    paint(label_text, set_location(x_coordinate, y_coordinate),  set_foreground, choose_color('#E0E0E0'))
  end
end
