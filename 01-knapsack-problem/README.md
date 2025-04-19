# Knapsack Problem (KP)


## Problem formulation

The knapsack problem can be formally defined as follows: We are given an
instance of the knapsack problem with item set $N:= \lbrace 1,\ldots,n \rbrace$, consisting of $n$ items $j$ with profit
$p_j$ and weight $w_j$, and the capacity value $c$. Then the objective is to select a subset of $N$ such
that the total profit of the selected items is maximized and the total weight does not
exceed $c$.

A knapsack problem can be formulated as a solution of the following linear integer program:

![Mathematical formulation](./problem.png)

The objective function represents the total value of the selected items, whereas the first constraint
represents the capacity constraint and the second constraint imposes the decision variables to be binary variables.


## Assumptions on the Input Data

To avoid trivial situations and tedious considerations of pointless sub-cases we will
impose a number of assumptions on the input data of the knapsack problem.
However, as described below this will not result in a loss of generality. The analogous assumptions apply also to most of the
variants of Knapsack Problem.

+ First of all, only problems with at least two items will be considered, i.e. we assume
$n \geq 2$. Obviously, the case $n = 1$ represents a single binary decision which can be
made by simply evaluating the two alternatives.

+ Two other straightforward assumptions concern the item weights. Naturally, we can
never pack an item into the knapsack if its weight exceeds the capacity. Hence, we
can assume $w_j \leq c$ for $j = 1, \ldots, n$ because otherwise we would have to set 
to $0$ any binary variable corresponding to an item violating this condition.

+ If on the other hand all items together fit into the knapsack,
the problem is trivially solved by packing them all. Therefore, we assume $\sum_{j=1}^n w_j  > c$.
Otherwise, we would set $x_j = 1$ for all $j = 1,\ldots, n$.

+ Without loss of generality we may assume that all profits and weights are positive:
$p_j >0$ and $w_j > 0$ for $j=1, \ldots, n$. If this is not the case we may transform the instance to satisfy
these conditions.


## Knapsack problem as decision problem

In the following we will consider decision problems where the feasibility of a particular 
selection of alternatives can be evaluated by a linear combination of coefficients
for each binary decision. In this model the feasibility of a selection of alternatives is
determined by a capacity restriction in the following way. In every binary decision $j$
the selection of the first alternative $(x_j = 1)$ requires a weight or resource $w_j$ whereas
choosing the second alternative $(x_j = 0)$ does not. A selection of alternatives is feasible 
if the sum of weights over all binary decisions does not exceed a given threshold
capacity value $c$. This condition can be written as $\sum_{j=1}^n w_j x_j \leq c$. Considering this
decision process as an optimization problem, where the overall profit should be as
large as possible, yields the knapsack problem.



## Knapsack problem as leisure interpretation

This characteristic of the problem gives rise to the following interpretation of knapsack problem
which is more colourful than the combination of binary decision problems. Consider
a mountaineer who is packing his knapsack (or rucksack) for a mountain tour and
has to decide which items he should take with him. He has a large number of objects
available which may be useful on his tour. Each of these items numbered from $1$ to
$n$ would give him a certain amount of comfort or benefit which is measured by a
positive number $p_j$. Of course, the weight $w_j$ of every object which the mountaineer
puts into his knapsack increases the load he has to carry. For obvious reasons, he
wants to limit the total weight of his knapsack and hence fixes the maximum load
by the capacity value $c$.



## Knapsack problem as an investment problem

Considering the above characteristic of the mountaineer in the context of business
instead of leisure leads to a second classical interpretation of Knapsack problem as an investment problem. 
A wealthy individual or institutional investor has a certain amount
of money $c$ available which she wants to put into profitable business projects. As
a basis for her decisions she compiles a long list of possible investments including
for every investment the required amount $w_j$ and the expected net return $p_j$ over a
fixed period. The aspect of risk is not explicitly taken into account here. Obviously,
the combination of the binary decisions for every investment such that the overall
return on investment is as large as possible can be formulated by knapsack problem.


## Knapsack problem as a logistic problem

A illustrating example of a real-world economic situation which is captured
by knapsack problem is taken from airline cargo business. The dispatcher of a cargo airline has
to decide which of the transportation requests posed by the customers he should
fulfill, i.e. how to load a particular plane. His decision is based on a list of requests
which contain the weight $w_j$ of every package and the rate per weight unit charged
for each request. Note that this rate is not fixed but depends on the particular long-term 
arrangements with every customer. Hence the profit $p_j$ made by the company
by accepting a request and by putting the corresponding package on the plane is
not directly proportional to the weight of the package. Naturally, every plane has a
specified maximum capacity $c$ which may not be exceeded by the total weight of
the selected packages. This logistic problem is a direct analogon to the packing of
the mountaineers knapsack.



## Knapsack problem in academia

An interesting example of the knapsack problem from academia which may appeal
to teachers and students was reported by Feuerman and Weiss. They describe
a test procedure from a college in Norwalk, Connecticut, where the students may
select a subset of the given question. To be more precise, the students receive $n$
questions each with a certain "weight" indicating the number of points that can be
scored for that question with a total of e.g. 125 points. However, after the exam all
questions answered by the students are graded by the instructor who assigns points
to each answer. Then a subset of questions is selected to determine the overall grade
such that the maximum number of reachable points for this subset is below a certain
threshold, e.g. 100. To give the students the best possible marks the subset should
be chosen automatically such that the scored points are as large as possible. This
task is clearly equivalent to solving a knapsack problem with an item $j$ for the $j$-th
question with $w_j$ representing the reachable points and $p_j$ the actually scored points.
The capacity $c$ gives the threshold for the limit of points of the selected questions.


## References
- Knapsack Problems, H. Kellerer, U. Pferschy, D. Pisinger, 2004, [DOI](https://doi.org/10.1007/978-3-540-24777-7)





