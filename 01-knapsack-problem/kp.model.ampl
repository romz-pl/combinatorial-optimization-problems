#
# The AMPL implementation of Knapsack Problem (KP).
#
# author: Zbigniew Romanowski
#

# The set of indexes
set N; 
check: card(N) >= 2;


# Capacity
param C > 0;


# Weigths and their constrains.
param W{N} > 0;
check: sum {j in N} W[j] > C;
check{j in N}: W[j] <= C;


# Profits
param P{N} > 0;


# Decision variable
var X{N} binary;


# The objective function.
maximize objective_function:
    sum {j in N} P[j] * X[j];


# The capacity constraint.
subject to C_capacity:
    sum {j in N} W[j] * X[j] <= C;

