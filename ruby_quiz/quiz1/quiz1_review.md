使用
a = %w{a b c d e f g h} 直接创建Array,注意用空格分隔

## String.tr(from_str, to_str) 方法 ###

去除字符串中除了某种串的方法
    * ori_str.delete("^a-zA-Z0-9")
    * ori_str.tr!('^A-Za-z','')_
  
##可以用 String.tr来对字符串进行大写处理##
    * ori_str.tr!('^A-Za-z','')
    * ori_str.tr!('a-z','A-Z')
    * ori_str.upcase

## 使用each块注意 ##
*each\_with_index 带value和index一起遍历

生成随机字符串
