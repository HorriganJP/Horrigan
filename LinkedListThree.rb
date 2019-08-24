class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_accessor :data

    def initialize
        @data = nil
    end

    def push(data)
        @data = Node.new(data, @data)
    end
    
    def pop
        return print "nil\n" if @data.nil?
        print "pop: #{@data.value}\n"
        @data = @data.next_node
    end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

# |12| next_node -> |99| next_node -> |37| next_node |nil|
# |37| next_node -> |99| next_node -> |12| next_node -> |nil|

def reverse_list(list, previous=nil)
  if list.next_node != nil           
    head = list
    list = list.next_node    
    reverse_list(list, head)
  end
  head = list                 # 37
  while head.next_node != nil 
    head = list.next_node     # 
  end
  unless previous.nil?
    previous.next_node = nil
  end
  head.next_node = previous #reconstructing list here
  list
end

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)
stack = Stack.new
    
print_values(node3)
puts "-----------"
stack.push(node3)
rev = reverse_list(node3)
print_values(node1)