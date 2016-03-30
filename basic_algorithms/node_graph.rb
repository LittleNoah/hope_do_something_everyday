class Vertex
  attr_reader :color, :parent, :distance
  def initialize
    @color = :GRAY
    @parent = nil
    @distance = Float::INFINITY
  end
end

class SimpleGraph
  attr_reader :vertices, :edges, :adj_list
  def initialize

  end
end