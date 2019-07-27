class Person
  attr_reader :age, :name
  def initialize(name, age)
    @name = name
    @age = age # These are instanced variables
  end

end

ken = Person.new("Ken", 28)
marco = Person.new("marco", 31)
erica = Person.new("Erica", 29)
cindy = Person.new("Cindy", 14)

people = [ken, marco, erica, cindy]

def sort_people(people, comparer)
  people.sort do |x, y|
    #x.age <=> y.age

    comparer.call(x) <=> comparer.call(y)
  end
end

#grab_age = lambda do |person| #this is the lambda. Comparer is the grab_age method
#  person.age
#end

#grab_name = lambda do |person|
#  person.name
#end

sorted_people = sort_people(people,
  lambda { |person| person.age}) 

puts sorted_people.inspect