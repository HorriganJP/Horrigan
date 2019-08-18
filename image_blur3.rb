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
            # Unless statement stops row from exceeding 0th row
            #if row != 0 
            #    @image[row - 1][col + n] = 1
            #end
            
            #bottom 
            @image[row + 1][col] = 1 unless row + 1 >= length
            # Unless statement stops creation of new row
            #if row != length - 1
            #    @image[row + 1][col] = 1
            #end
            
            #left  
            @image[row][col - 1] = 1 unless col == 0 # - 1
            # Unless statement stops creation of new 0th column
            #if col != 0
            #    @image[row][col - 1] = 1
            #end

            #right 
            @image[row][col + 1] = 1 unless col + 1 == width
            # Unless statement stops creation of new nth column
            #if col != width - 1
            #    @image[row][col + 1] = 1
            #end
        end
        output_image
    end

    def manhattan_blur
        @n = gets.chomp.to_i
        @n.times do
            find_ones
            blur
        end
    end

    def manhattan
        @array.each do |row, col|
            #top  
            @image[row - 1][col] = 1 unless row == 0
            # Unless statement stops row from exceeding 0th row
            #if row != 0 
            #    @image[row - 1][col + n] = 1
            #end
            
            #bottom 
            @image[row + 1][col] = 1 unless row + 1 >= length
            # Unless statement stops creation of new row
            #if row != length - 1
            #    @image[row + 1][col] = 1
            #end
            
            #left  
            @image[row][col - 1] = 1 unless col == 0 # - 1
            # Unless statement stops creation of new 0th column
            #if col != 0
            #    @image[row][col - 1] = 1
            #end

            #right 
            @image[row][col + 1] = 1 unless col + 1 == width
            # Unless statement stops creation of new nth column
            #if col != width - 1
            #    @image[row][col + 1] = 1
            #end
        end
        output_image
    end
    
end

image = Image.new([
[0, 0, 0, 0, 0, 0, 0], # [row, col]
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 1, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0],
])

#image.output_image
#image.find_ones
#image.blur

puts "Enter your manhattan blur distance."
image.manhattan_blur