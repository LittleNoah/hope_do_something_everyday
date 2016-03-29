# Introduction
上来就说Graph problems pervade computer science

# Elementary Graph Algorithms
22.1 讨论了两种most common的图的computational representations
- Adjacency Lists
- Adjacency Matrices

22.2 presents graph-searching algorithm: BFS and how to create a breadth-first tree

22.3 presents DFS 

## 22.1 Representations of graph
一般就是两种
- 邻接表
- 邻接矩阵
### 邻接表

### 邻接矩阵
- 如果是undirected 那么(u,v) = (v,u) 可以省下a half的空间

### Exercises
#### 22.1-1 有向图出度、入度
有向图的出入度应该是相同的，遍历一遍Edge就可以了

#### 22.1-2 Complete binary tree
额，让画一个七个vertices的完全二向树的两种表现形式
> A complete binary tree is a binary tree in which every level, except possibly the last, is completely filled, and all nodes are as far left as possible.

> ![Complete Binary Tree Sample](http://web.cecs.pdx.edu/~sheard/course/Cs163/Graphics/CompleteBinary.jpg)

> From [this site](http://web.cecs.pdx.edu/~sheard/course/Cs163/Doc/FullvsComplete.html) .

#### 22.1-3 Transpose of directed graph 
要求做有向图两种表示形式的转置（边的指向全部reverse）的算法
- 邻接链表的话，遍历每一个Edge，并把读出的(v1,v2)放在(v2,v1)即可，复杂度O(E)
- 邻接数组的话，初始化一个相同大小的数组（原来的数组也可以），读到(v1,v2) = 1，就把(v2,v1) = 1即可，复杂度

#### *22.1-4 Multigraph 
首先看看什么是Multigraph
> In mathematics, and more specifically in graph theory, a multigraph is a graph which is permitted to have multiple edges (also called parallel edges[1]), that is, edges that have the same end nodes. Thus two vertices may be connected by more than one edge.  -- WikiPedia

就是说两点之间可以有多边呗，题目要求转换为undirected graph并用邻接数组表示...遍历一遍边就好了似乎= = mark一下吧


#### 22.1-5 Square of directed Graph
给出计算一个图的Square的算法,Answer里给出了duke的课对这道题的详细解释，看完就懂了
*Answer:* 
[https://www.cs.duke.edu/courses/fall05/cps130/lectures/skiena.lectures/lecture15.pdf](https://www.cs.duke.edu/courses/fall05/cps130/lectures/skiena.lectures/lecture15.pdf "Answer")

#### 22.1-6 Find universial sink, 给出邻接矩阵
*What is universial sink?* 

**A vertice whose in-degree=1,out-degree=0**

*Answer: *从头遍历矩阵(v1,v2)=1,(v2,v1)=0或者相反即可吧

#### 22.1-7 Incidence Matrix
说实话这题没看懂，矩阵的运算全忘了，到时候复习一下再做吧 GG

#### 22.1-8 

发现一个神Repo，国人多神犇

[https://github.com/gzc/CLRS/blob/master/C22-Elementary-Graph-Algorithms/22.1.md#answer-7](https://github.com/gzc/CLRS/blob/master/C22-Elementary-Graph-Algorithms/22.1.md#answer-7 "Answer")

## 22.2 Breadth-first Search

