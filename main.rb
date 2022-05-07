def draw_button(label_text, x_coordinate, y_coordinate, foreground_color, is_dark_mode)

end

def draw_light_button
  paint(label_text, x_coordinate, y_coordinate, foreground_color + 10, '#E0E0E0')
end

def draw_dark_button
  paint(label_text, x_coordinate, y_coordinate, foreground_color - 10, '#111111')
end