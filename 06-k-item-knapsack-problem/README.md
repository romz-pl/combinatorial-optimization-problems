# k-Item Knapsack Problem (kKP)


## Problem formulation

In many practical occurrences of knapsack problems additional requirements are im-
posed on the structure of the optimal solution. A quite frequent and natural restric-
tion concerns the number of items included in an optimal solution. Whenever the
selection of items causes the explicit handling of goods or induces transaction costs
not represented in the data of the knapsack instance, solutions with a small number
of larger items will be preferred to a solution with a large number of smaller items.

The easiest way of representing this goal is the formulation of a **cardinality constraint**,
i.e. an upper bound k on the number of packed items.

The resulting **cardinality constrained knapsack problem** or **k-item knapsack problem** is
 the following linear integer program:

![Mathematical formulation](./problem.png)

where $k$ is an integer number between $2$ and $n - 1$. Clearly, the constraint guarantees
that there are at most $k$ items packed into the knapsack.



## References
- Knapsack Problems, H. Kellerer, U. Pferschy, D. Pisinger, 2004, [DOI](https://doi.org/10.1007/978-3-540-24777-7)





