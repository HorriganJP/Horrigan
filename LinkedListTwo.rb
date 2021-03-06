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
        print "#{@data.value}\n"
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

def reverse_list(list, previous=nil)
  stored_node = list.next_node
  list.next_node = previous
  if stored_node != nil
    reverse_list(stored_node, list)
  else
    return list
  end
end

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)
stack = Stack.new
    
print_values(node3)
puts "-----------"
stack.push(node3)
rev = reverse_list(node3)
print_values(rev)

