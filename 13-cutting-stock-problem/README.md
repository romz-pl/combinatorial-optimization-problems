# Cutting Stock Problem

## Problem formulation

In the cutting stock
problem we are given an unlimited number of bins (e.g. base rolls of metal) oflength
$c$ and $m$ different types of items (rolls). At least $b_i$ rolls of length $w_i, i = 1, \ldots , m$
have to be cut of the base rolls. The objective is minimize the the number of bins
used, i.e. to minimize the wasted material. In the special case of $b_i = 1, i = 1, \ldots , m$,
i.e. there is only a demand for one item per type, the problem can be recognized as
the ordinary **bin packing problem**.


Assume that $U$ is an upper bound on the number of bins needed. Moreover, the
variable $x_{ij}$ denotes how many times item type $i$ is cut of bin $j$ and the decision variable
$y_j$ denotes whether bin $j$ is used for cutting or not. The cutting stock problem may
then be formulated as a follows:


![Mathematical formulation](./problem-aux.png)





## Remarks

The problem reflects situations where items belong to a number of owners, and each owner wishes to
maximize the total profit of his own items in the shared knapsack. The model maximizes
the minimum level of the profit sum that can be guaranteed to all owners.




## References
- Knapsack Problems, H. Kellerer, U. Pferschy, D. Pisinger, 2004, [DOI](https://doi.org/10.1007/978-3-540-24777-7)





