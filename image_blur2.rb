class Image

  def initialize(image)
      @image = image
  end
    
  def output_image
      @image.each do |image|
          puts image.join()
      end
  end
        
  def width
      @image[0].length
  end 
  
  def length
      @image.length
  end
  
  def find_ones
    @array = []
    @image.each_with_index do |row, x|
        row.each_with_index do |cell, y|
            @array << [x, y] if cell == 1 
        end
    end
    puts @array
  end
        
  def blur
    @array.each do |row, col|
      #top  
      @image[row - 1][col] = 1 unless row == 0
      
      #bottom 
      @image[row + 1][col] = 1 unless row + 1 >= length
       
      #left  
      @image[row][col - 1] = 1 unless col == 0 # - 1
      
      #right 
      @image[row][col + 1] = 1 unless col + 1 == width
    end
    output_image
  end

end

image = Image.new([
[1, 0, 0, 0], # [row, col]
[0, 0, 0, 0], # [1, 1]
[0, 0, 0, 0], # [2, 3]
[0, 0, 0, 1],
])

#image.output_image
image.find_ones
image.blur 
