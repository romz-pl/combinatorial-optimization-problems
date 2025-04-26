# d-Dimensional Knapsack Problem (d-KP)


## Problem formulation

In the generalizations of the basic knapsack problem we will add additional constraints to the single weight constraint thus
attaining the multidimensional knapsack problem. Many real world applications
in the selection and packing area require more than a single constraint.

The resulting generalization of knapsack problem to the d-dimensional knapsack problem is defined as follows.

![Mathematical formulation](./problem.png)


This problem can be seen as a knapsack problem with a collection of different
resource constraints or one constraint consisting of a multidimensional attribute.


## Assumptions on the Input Data

It is assumed that all $p_j$, $w_{ij}$ and $c_i$ are positive values. It
is allowed that $w_{ij }= 0$ for some $i, j$, as long as $\sum_{i=1}^d w_{ij} \geq 1$ holds for all items
$j = 1,\ldots,n$. To guarantee that an item can be packed at all we assume
```math
w_{ij} \leq c_i, \quad j = 1,\ldots,n, \quad i = 1, \ldots, d.
```
To avoid trivial constraints it is assumed
```math
\sum_{j=1}^n w_{ij} \geq c_i, \quad i = 1, \ldots, d.
```


## Comments

Note that the terminology for (d-KP) is not completely unique in the literature.
Beside the occurrence of hyphens confusion arises sometimes between the terms
**multiconstraint knapsack**, **multiple knapsack** and **multidimensional knapsack**. It seems
that most authors have accepted the latter name as a general term for (d-KP) and
reserving multiple to represent the fact that an item can be put into one of several
knapsacks, which is a completely different problem!


We choose to use the terms **multidimensional** and **d-dimensional** in parallel where
the former signifies the general model and the latter stresses the number of constraints.
In this way (2-KP) follows immediately from (d-KP) and (KP) is equivalent to (l-KP).

The term two-dimensional packing problem also appears in a geometric context
where $w_{1j}$ and $w_{2j}$ refer to the length and width of object $j$. In this case, a feasible
packing has to observe the obvious geometric constraints of placing rectangles into
a given rectangle of length $c_1$ and width $c_2$. These geometric problems are a major
topic in the area of bin packing.

In the literature (d-KP) was not always considered as a proper member of the knapsack
family of problems. Indeed, (d-KP) is a special case of general integer programming
with the only restrictions that all coefficients are positive and the variables are zero
or one. Therefore, many authors use a standard notation of linear programming
involving elements of linear algebra instead of the knapsack based notation.

There are two main characteristics to motivate the separate treatment of this special
case. On one hand (d-KP) is a particular difficult instance of integer programming
because the "constraint matrix" consisting of $w_{ij}$ is unusually dense whereas most
relevant classes of integer programming problems are defined by sparse constraint
matrices. On the other hand, there is a trivial feasible solution at hand for (d-KP),
namely $x_j = 0$ for all $j$, whereas in general integer programming finding a feasible
solution can be as hard as finding an optimal solution.


## Applications

Most of the earlier contributions to the multidimensional knapsack problem were
motivated by a budget planning scenario. (d-KP) is the direct mathematical formulation of a planning
task of a decision maker who has to select a subset of projects (i.e. items) out of a
list of possibilities, each of which (hopefully) generates a certain profit or benefit
while consuming not only a monetary resource as in (KP) but a number of different
types of limited resources. These can be diverse categories such as office space,
available personal, vehicles, machinery, computing power or long-term and short-term financing.

Applications of a different flavour appear in computer science. These include the
allocation of processors and databases in a distributed computer system],
and the scheduling of computer programs. In a context of business organization one applied a (d-KP)
model to the problem of allocating shelf space to consumer products in a retail
store. Other fields of planning and optimization, where (d-KP) frequently appears
in the mathematical formulation, are the loading of cargo, cutting
stock problems and the scheduling of tasks or projects.


## References
+ U. Pferschy, D. Pisinger, **Knapsack Problems**, 2004, [DOI](https://doi.org/10.1007/978-3-540-24777-7)
