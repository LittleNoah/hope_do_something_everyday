# time, d, f are timestamps

$time = 0
def dfs(graph)
  #init
  graph.vertices.each do |u|
    u.color = :WHITE
    u.parent = nil
  end
  $time = 0
  #iteration
  graph.vertices.each do |u|
    dfs_visit(graph, u) if u.color == :WHITE
  end
end

def dfs_visit(graph, u)
  $time += 1
  u.d = $time
  u.color = :GRAY
  u.adjacents.each do |v|
    if v.color == :WHITE
      v.parent = u
      dfs_visit(graph, v)
    end
  end
  u.color = :BLACK
  $time = $time + 1
  u.f = time
end
