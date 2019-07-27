require 'active_support/all' #built into ruby on rails.

num = 1 #integer
string = 'hello' #string
f = 1.0 #float
sym = :symbol # "symbol - can also be done w/ string"

array = [1, 2, 3, 4] #array
hash = {
  1 => "one", #values are mapped to eachother
  2 => "two",
  3 => "three",
  4 => "four"
}

json_string = '{"1":"one","2":"two","3":"three","4":"four"}'
parsed = ActiveSupport::JSON.decode(json_string)
puts parsed.inspect