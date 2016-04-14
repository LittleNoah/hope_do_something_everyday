#word search
# use backtrack?
# now I know how to solve it
# first, init the dfs v, every v has four adjacents:left, right, top, bottom,
# then, dfs, but we need to control the length and every match pattern
# then we found the word


# http://lgn21st.iteye.com/blog/173550 
# Ruby使用 Array.new(n,object) 初始化时，使用的是同一个object的引用
# 可以使用block解决这个问题

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  # if stirng size zero
  return true if board.size==0 && word.length==0
  # if word longer than board
  return false if (board.size*board[0].size) < word.length
  words = word.split("")
  index = 0
  board.each_with_index do |line, x|
    line.each_with_index do |w, y|
      if w == word[0]
        index = 0
        visited = Array.new(board.size){ Array.new(board[0].size, false) }
        has_found = search_word(x, y, board, words, index, visited)
        return true if has_found
      end
    end
  end
  false
end

def search_word(x,y,board,words,index, visited)
  return false if x<0 || y<0 || x>=board.size || y>=board[0].size
  return false if visited[x][y]
  result = false
  # search loop
  if board[x][y] == words[index]
    puts "x:#{x},y:#{y}  " + words[index] + " index: #{index}"
    visited[x][y] = true
    index+=1
    return true if index == words.size
    result = search_word(x-1, y, board, words, index, visited) || search_word(x+1, y, board, words, index, visited) || search_word(x, y+1, board, words, index, visited) || search_word(x, y-1, board, words, index, visited)
  end
  visited[x][y] = false unless result
  result
end

board = [
    ['A','B','C','E'],
    ['S','F','E','S'],
    ['A','D','E','E']
]
word = "ABCESEEEFS"

puts exist(board, word)