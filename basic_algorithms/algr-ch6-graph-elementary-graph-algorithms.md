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

