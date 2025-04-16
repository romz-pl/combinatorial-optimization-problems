#
# The AMPL implementation of Unounded Knapsack Problem (UKP).
#
# author: Zbigniew Romanowski
#

# The set of indexes
set N; 
check: card(N) >= 2;


# Capacity
param C > 0;


# Weigths.
param W{N} > 0;


# Profits
param P{N} > 0;


# Decision variable
var X{j in N} integer, >= 0;


# The objective function.
maximize objective_function:
    sum {j in N} P[j] * X[j];


# The capacity constraint.
subject to C_capacity:
    sum {j in N} W[j] * X[j] <= C;
