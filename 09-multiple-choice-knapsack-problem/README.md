# Multiple-Choice Knapsack Problem (MCKP)

## Problem formulation

The multiple-choice knapsack problem is a generalization of the ordinary
knapsack problem, where the set of items is partitioned into classes. The binary
choice of taking an item is replaced by the selection of exactly one item out of each
class of items.

In order to define the problem formally, consider $m$ mutually disjoint classes
$N_1, \ldots ,N_m$ of $items$ to be packed into a knapsack of capacity $c$. Each item $j \in N_i$
has a profit $p_{ij}$ and a weight $w_{ij}$, and the problem is to choose exactly one item from
each class such that the profit sum is maximized without exceeding the capacity $c$ in
the corresponding weight sum. If we introduce the binary variables $x_{ij}$ which take
on value $1$ if and only if item $j$ is chosen in class $N_i$, the problem is formulated as:


![Mathematical formulation](./problem.png)



## Applications




## References
- Knapsack Problems, H. Kellerer, U. Pferschy, D. Pisinger, 2004, [DOI](https://doi.org/10.1007/978-3-540-24777-7)





