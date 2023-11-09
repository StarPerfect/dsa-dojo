class Stack

    def initialize
        @stack = []
    end

    def push(element)
        @stack.push(element)
    end

    def pop
        @stack.pop
    end

    def count
        @stack.count
    end

end