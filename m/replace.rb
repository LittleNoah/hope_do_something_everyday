class Array
  def replace(ori, replace)
    self.map{ |e| e == ori ? replace : e}
  end
end

a  = [2,2,3,4,5,6,7,8,8,8,8]
a.replace 2,10
puts a