# Linear Sum Assignment Problem


## Problem formulation


The **linear sum assignment problem (LSAP)** is one of the most famous problems in linear
programming and in combinatorial optimization. Informally speaking, we are given an
$n \times n$ **cost matrix** $C = (c_{ij})$, where $c_{ij}$ measures the cost
of assigning $i$ to $j$, and we want to match each row to a different column in such
a way that the sum of the corresponding entries is minimized. In other words, we want to
select $n$ elements of matrix $C$ so that there is exactly one element in each row and one in each
column and the sum of the corresponding costs is a minimum.

Alternatively, one can define **LSAP** through a graph theory model. Define a bipartite
graph $G = (U, V; E)$ having a vertex of $U$ for each row, a vertex of $V$ for each column, and
cost $c_{ij}$ associated with edge $[i, j]$ for $i, j = 1, \ldots , n$. The problem is then to determine a
minimum cost perfect matching in $G$.

The problem is formulated as follows:


![Mathematical formulation](./problem.png)


The first set of equations (1) says that every row of a matrix $X = (x_{ij})$ sums to $1$. The
second set of equations (2) says that every column of a matrix $X$ has a sum of $1$.
Finally, (3) says that a matrix $X$ has only the entries $0$ and $1$. In particular,
a matrix $X$ has exactly $n$ 1-entries, one in every row and in every column. The
relations (1)–(3) are called assignment constraints and the matrix $X$ is called the permutation matrix.



## References
+ R. Burkard, M. Dell’Amico, S. Martello "Assignment Problems", 2009, [DOI](https://doi.org/10.1137/1.9781611972238)

