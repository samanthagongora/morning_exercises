class DominantColor
  def find_dominant(color)
    dominant = split_color(color)[0]
    split_color(color).each do |aspect|
      if aspect > dominant
        dominant = aspect
      end
    end
    puts dominant
  end

  def split_color(color)
     split = []
     split << color[0..1]
     split << color[2..3]
     split << color[4..5]
  end
end


color = "336AF6"
new_color = DominantColor.new
new_color.find_dominant(color)
