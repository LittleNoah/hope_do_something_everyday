class SolitaireCipher
  attr_accessor :ori_char, :ori_num
  @ori_char = %{A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}

  def initialize
    abc_range = 'A'..'Z'
    @ori_char = abc_range.to_a

  end
end

