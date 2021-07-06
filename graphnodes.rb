require 'set'
class GraphNode
    attr_accessor :val, :neighbors

    def initialize(value)
        self.val = value
        self.neighbors = []

    end

    def add_neighbors(node)
        self.neighbors << node
    end

    def bfs(starting_node, target_value)
        arr = [starting_node]
        visited = Set.new()
    
        while !arr.empty?
            current_node = arr.shift
            if !visited.include?(current_node)
                return current_node.val if current_node.val == target_value
                visited.add(current_node)
                arr += current_node.neighbors
            end
        end
        nil
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

