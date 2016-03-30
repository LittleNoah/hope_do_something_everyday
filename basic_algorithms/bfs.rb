require "set"
# for undirected graph
class Node
  attr_reader :name, :adjacents
  def initialize(name)
    @adjacents = Set.new
    @name = name
  end
end

class Vertex < Node
  attr_reader :color, :parent, :distance
  def initialize(name)
    super(name)
    @color = :GRAY
    @parent = nil
    @distance = Float::INFINITY
  end
  def to_s
    @name
  end
end

class UndirectedGraph
  attr_reader :node_set
  def initialize
    @node_set = Set.new
  end
  def add_edge(node_a, node_b)
    @node_set.add(node_a)
    @node_set.add(node_b)
    node_a.adjacents << node_b
    node_b.adjacents << node_a
  end
end

class BFSearch
  attr_reader :fifo_queue, :set_vertices
  def initialize(vertices)
    @set_vertices = Set.new
    @fifo_queue = Array.new
    add_vertices(vertices)

  end
  def add_vertices(vertices)
    vertices.each do |vertex|
      @set_vertices.add(vertex)
    end
  end
  def bfs(graph, s)
    graph.node_set.each do |node| #initalize the vertices
      node.color = :WHITE
      node.distance  = Float::INFINITY
      node.parent = nil
    end
    s.color = :GRAY
    s.distance = 0
    s.parent = nil
    @fifo_queue = Array.new
    @fifo_queue.unshift(s) # enter the queue in index 0
    while 0 < @fifo_queue.size
      u = @fifo_queue.pop
      u.adjacents.each do |v|
        if v.color == :WHITE
          v.color = :GRAY
          v.distance = u.distance + 1
          v.parent = u
          @fifo_queue.unshift(v)
        end
      end
      u.color = :BLACK
    end


  end

end