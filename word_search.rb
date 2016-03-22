#word search
# use backtrack?

# http://lgn21st.iteye.com/blog/173550 
# Ruby使用 Array.new(n,object) 初始化时，使用的是同一个object的引用
# 可以使用block解决这个问题

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}

dir_ar = [[0,1],[1,0],[-1,0],[0,-1]]


def exist(board, word)
  visited = Array.new(board.size){ Array.new(board[0].size, false) }
  path = []
  word_len = word.length
  index = 0
  search_char(board,char).each do |start_pos|
    word_len-=1
    pos_char_surround(board, board[index])
  end
end


def search_char(board, char)
  result = []
  board.each_with_index do |sub,x|
    sub.each_with_index do |v,y|
      result << [x,y] if char==v
    end
  end
  result
end

def pos_char_surround(board, char, pos_x, pos_y)
  result = []
  dir_ar.each do |sub_dir|
    tmp_x = pos_x + sub_dir[0]
    tmp_y = pos_y + sub_dir[1]
    if not out_of_bound?(tmp_x, tmp_y)
      result << [tmp_x,tmp_y] if board[tmp_x,tmp_y] == char
    end
  end
  result
end


end

def out_of_bound?(board, pos_x, pos_y)
  return true if pos_x+1 > board.size
  return true if pos_y+1 > board[0].size
  false
end
