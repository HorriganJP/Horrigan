add_numbers2 = lambda do |num1, num2| #This is a variable
  return num1 + num2
end

#puts add_numbers(3, 4)
#puts subtract_numbers(3, 4)

#puts add_numbers2.call(3, 4)
#puts add_numbers.inspect #cant do because it is triggering method add_numbers
#cant treat method like a variable all the time. Why lambda is important. 

def combine (m, num1, num2) #takes three arguments / variables
  return m.call(num1, num2) #num1 & 2 are intergers. m is serving as a pointer to
  # add_numbers2
end

puts combine(add_numbers2, 3, 4)

