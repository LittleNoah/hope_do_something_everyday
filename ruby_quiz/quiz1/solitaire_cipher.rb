class SolitaireCipher
  Version = "1.0"
  attr_accessor :ori_char, :ori_num, :abc_num_hash, :num_abc_hash
  @ori_char = %{A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
  def initialize
    abc_range = 'A'..'Z'
    @ori_char = abc_range.to_a
    @abc_num_hash = Hash.new -1
    @num_abc_hash = Hash.new '-1'
    index = 1
    abc_range.each do |abc|
      @abc_num_hash[abc] = index
      @num_abc_hash[index] = abc
      index+=1
    end
  end
end

