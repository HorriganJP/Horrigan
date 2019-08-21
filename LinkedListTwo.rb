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
  stack = Stack.new #new blank stack
  while list
    # while method will execute code w/ below vars
    #        @value,  @next_node
    # list = 12,      node2
    # list = 99,      node1
    # list = 37,      nil  
    @data = list.value #assign var list.value to head of stack
    # first iteration: head will be 12 --> 99 --> 37
    # second iteration: head will be 37 --> 99 --> 12
    previous = list.value #stores head as a pointer once stack is flipped 
    #            first iteration, second iteration
    # previous = 12,              37
    # previous = 99,              99
    # previous = 37,              12
    stack.push(list.value) #pushes var to stack
    # pushes [12, node2],[99, node1 ],[37, nil] to stack
    list = list.next_node #iteration process - assigns next_node to list variable and executes list
    # Will end when list == nil
    # Uncommenting line 69 will create loop
  end
  #return stack.data #commented out code because we call print_values(stack.data) within reverse_list method
  print_values(stack.data)
  # Passes stack.data to print_values method proving initial stack tail (37) is now stack head
  # print_values method asks for list_node.value and list_node.next_node which looks like below:
  #             @value, @next_node
  # list_node = 37,     99
  # list_node = 99,     12
  # list_node = 12,     nil
  #reverse_list(stack.data) #uncommenting code will cause loop
  # proves that next_node value is changed
end

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)
stack = Stack.new
    
print_values(node3)
puts "-----------"
stack.push(node3)
rev = reverse_list(node3)


