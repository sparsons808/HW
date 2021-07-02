# class Stack

#     def initialize
#         @stack = []
#     end

#     def push(ele)
#         @stack << ele
#     end

#     def pop
#         @stack.pop
#     end

#     def peek
#         @stack[-1]
#     end

# end

# class Queue

#     def initialize
#         @queue = []
#     end

#     def push(ele)
#         @queue.push
#     end

#     def shift
#         @queue.shift
#     end

#     def peak
#         @queue[0]
#     end
# end

class Map

    def initialize
        @my_map = []
    end

    def set(key, val)
        if @my_map.empty?
            @my_map << [key, val]
        end

        @my_map.each_with_index do |pair, idx|
            if pair.include?(key) && @my_map[idx][0] == key
                @my_map[idx][1] = val
            end
        end

    end

    def get(key)
        @my_map.each_with_index do |pair, idx|
            if pair.include?(key) && @my_map[idx][0] == key
                p key
            end
        end
    end

    def delete(key)
        @my_map.each_with_index do |pair, idx|
            if pair.include?(key) && @my_map[idx][0] == key
                @my_map.delete_at(idx)
            end
        end
    end

end
