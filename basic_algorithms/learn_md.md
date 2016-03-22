# 什么是Markdown
Markdown是一种用来写作的轻量级“标记语言”。
注意在语法符号和文字之间加上一个字符的空格，I guess it is the ”way“.
# Markdown的语法

## 标题
在Markdown中，如果一段文字被定义为标题，只需要在这段文字前加 \# 号即可

\# 一级标题

\#\# 二级标题

\#\#\# 三级标题

最多可以到六级标题，一级标题是字号最大的（笑

## 列表
列表可以分为无序列表（没序号- -）和有序列表（有序号）

### 无序列表
在文字前使用 \- 或者 \* 就可以变成无需列表，例如下面的

#### 使用 \* 号或者 \- 号
* QQ
* Skype
* 陌陌

### 有序列表
在文字前加上序号即可，例如下面的例子

1. QQ
2. Skype
3. 陌陌

## 引用
如果使用引用，需要在文本前面加入一个 \> 尖括号
> 例如这样

## 图片与链接


插入链接与插入图片的语法很像，区别在一个 !号

图片为：\![]\(){ImgCap}{/ImgCap}

链接为：\[]()

### 举例
[Github](http://github.com)

![Dog and Girl From Gratisography](http://www.gratisography.com/pictures/287_1.jpg)

## 强调
### 粗体和斜体
用两个 \* 包含的一段文本就是粗体的语法，用一个 \* 包含都就是斜体的写法，举例见下

*今宵明月，绝不西沉。只此美梦，不再苏醒。*

**从今往后，生生世世，长相厮守，为你立誓。**

## 表格
据说表格是比较累人的地方了。


dog | bird | cat
----|------|----
foo | foo  | foo
bar | bar  | bar
baz | baz  | baz

## 代码框
程序员专用,代码前面空四个空格或者一个TAB

	def init_visited
	  result = []
	  x.each do |heihei|
	    puts code
	  end
	end


