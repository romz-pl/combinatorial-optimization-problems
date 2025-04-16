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
corresponding integer programming formulation of the bounded knapsack problemis given as follows.

![Mathematical formulation](./problem.png)





## Assumptions on the Input Data

We assume that
$$
b_j \leq \lfloor \frac{c}{w_j} \rfloor, \quad j = \lbrace 1, \ldots, n \rbrace$,
$$
since no more than \lfloor c/ w_j \rfloor copies of item type $j$ will fit into the knapsack. If this is
not true for some item type $j$, one can immediately reduce the number of copies for
this item type by setting $b_j := \lfloor c / w_j \rfloor .


## Application

Clearly, the selection of objects under a capacity constraint where a limited number
of identical copies are available for every object type is a very natural model for many practical decision problems.
Classical applications are given in the computation of the most profitable loading of a ship (see Gilmore and Gomory [177])
or equivalently the most valuable loading of the space shuttle (see Render and Stair [405]),
and for cutting problems in one, two or more dimensions (see Gilmore and Gomory [176], Dyckhoff and Finke [120] and Section 15.1).
In a business
context investment decisions were considered, e.g. where a selection must be made
between different research and development problems (see Bradley, Hax and Magnanti [45, ch. 9]), and general capital budgeting problems
(see e.g. Weingartner [478] and Section 15.4).


## References
- Knapsack Problems, H. Kellerer, U. Pferschy, D. Pisinger, 2004, [DOI](https://doi.org/10.1007/978-3-540-24777-7)





