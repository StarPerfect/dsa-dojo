class Stack
    def initialize
        @head = nil
    end

    def push(data)
         if @head == nil
            @head = Node.new(data)
        else
            current_node = @head
            new_node = Node.new(data)
            while current_node.next != nil
                current_node = current_node.next
            end
            current_node.next = new_node
        end
    end
    
    def count
        if @head == nil
            count = 0
        else
            count = 1
            current_node = @head
            while current_node.next != nil
                count += 1
                current_node = current_node.next
            end
        end
        count
    end
end

class Node
    attr_accessor :data, :next
    
    def initialize(data, next_node = nil)
        @data = data
        @next = next_node 
    end
end