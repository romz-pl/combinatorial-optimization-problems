# Bounded Knapsack Problem (BKP)


## Problem formulation

Right from the beginning of research on the knapsack problem in the early sixties
separate considerations were devoted to problems where a number of **identical copies**
of every item are given or even an unlimited amount of each item is available.
The corresponding problems are known as the **bounded knapsack problem** and **unbounded knapsack problem**, respectively.
This article is devoted to the bounded case.


## Mathematical formulation

A set of **item types** $N = \lbrace 1, \ldots, n \rbrace$ is given where all items of type $j$ have
profit $p_j > 0$ and weight $w_j > 0$. There are $b_j > 0$ identical copies of item type $j$ available. The
corresponding integer programming formulation of the bounded knapsack problem is given as follows.

![Mathematical formulation](./problem.png)





## Assumptions on the Input Data

We assume that
```math
b_j \leq \left \lfloor \frac{c}{w_j} \right \rfloor, \quad j = \lbrace 1, \ldots, n \rbrace,
```
since no more than $\lfloor c/ w_j \rfloor$ copies of item type $j$ will fit into the knapsack. If this is
not true for some item type $j$, one can immediately reduce the number of copies for
this item type by setting $b_j := \lfloor c / w_j \rfloor$.

Assumption, which excludes trivial problem instances where all items can be packed, translates into
```math
sum_{j=1}^n w_j b_j > c.
```

## Application

Clearly, the selection of objects under a capacity constraint where a limited number
of identical copies are available for every object type is a very natural model for many practical decision problems.
Classical applications are given in the computation of the most profitable loading of a ship (see Gilmore)
or equivalently the most valuable loading of the space shuttle (see Render),
and for cutting problems in one, two or more dimensions (see Gilmore, Dyckhoff).
In a business context investment decisions were considered, e.g. where a selection must be made
between different research and development problems (see Bradley), and general capital budgeting problems (see Weingartner and Kellerer).


## References
+  H. Kellerer, U. Pferschy, D. Pisinger, Knapsack Problems, 2004, [DOI](https://doi.org/10.1007/978-3-540-24777-7)
+ H.M. Weingartner. Capital budgeting of interrelated projects: survey and synthesis. Management Science, 12:485-516, 1966 [DOI](https://www.jstor.org/stable/2627881)
+ B.Render, R.M. Stair, M.E. Hanna, T.S. Hale. Quantitative Analysis for Management, 2024 [DOI](https://www.pearson.com/en-us/subject-catalog/p/quantitative-analysis-for-management/P200000009863/9780138170851?srsltid=AfmBOorPfcLSiv79YZlLBqhx-xLAEYfPbO0soPV0PQwt0BkEpBWAH-qU&tab=title-overview)
+ P.C. Gilmore, R.E. Gomory. The theory and computation of knapsack functions. Operations Research, 14:1045-1074, 1966 [DOI](https://www.jstor.org/stable/168433)
+ P.C. Gilmore, R.E. Gomory. Multistage cutting stock problems of two and more dimensions. Operations Research, 13:94-120, 1964 [DOI](https://www.jstor.org/stable/167956)
+ P.C. Gilmore, R.E. Gomory. A linear programming approach to the cutting stock problem. Operations Research, 9:849-859.1961 [DOI](https://www.jstor.org/stable/167051)
+ H. Dyckhoff, U. Finke. Cutting and Packing in Production and Distribution. Physica, 1992. [DOI](https://link.springer.com/book/10.1007/978-3-642-58165-6)
+ S.P. Bradley, A.C. Hax, T.L. Magnanti. Applied Mathematical Programming. 1977 [PDF, Free](https://web.mit.edu/15.053/www/AMP.htm)
