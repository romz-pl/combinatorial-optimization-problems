# Multiple Knapsack Problem (MKP)


## Problem formulation

Another interesting variant of the cargo problem arises
if we consider a very busy flight route, e.g. Frankfurt - New York,
which is flown by several planes every day. In this case the dispatcher has to decide
on the loading of a number of planes in parallel, i.e. it has to be decided whether to
accept a particular transportation request and in the positive case on which plane to
put the corresponding package. The concepts of profit, weight and capacity remain
unchanged. This can be formulated by introducing a binary decision variable for
every combination of a package with a plane. If there are $n$ items on the list of
transportation requests and $m$ planes available on this route we use $nm$ binary variables
$x_{ij}$ for $i = 1, \ldots, m$ and $j = 1, \ldots , n$ with
```math
x_{ij}
\begin{case}
1 &  \text{if item j is put into plane i}, \\
0 & otherwise.
\end{case}
```


## Mathematical formulation

The mathematical programming formulation of this multiple knapsack problem is given by

![Mathematical formulation](./problem.png)

Constraint $\sum_{i=1}^m x_{ij} \leq 1, \quad j = 1, \ldots, n$
guarantees that every item is put at most into one plane. If the
capacities of the planes are identical we can easily simplify the above model by
introducing a capacity $c$ for all planes.



## References
- Knapsack Problems, H. Kellerer, U. Pferschy, D. Pisinger, 2004, [DOI](https://doi.org/10.1007/978-3-540-24777-7)





