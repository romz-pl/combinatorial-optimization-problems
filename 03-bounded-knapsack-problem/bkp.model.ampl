#
# The AMPL implementation of Bounded Knapsack Problem (BKP).
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


# Bounds and their constrains
param B{N} > 0, integer;
check{j in N}: B[j] <= floor(C / W[j]);
check: sum {j in N} W[j] * B[j] > C;


# Decision variable
var X{j in N} integer, >= 0, <= B[j];


# The objective function.
maximize objective_function:
    sum {j in N} P[j] * X[j];


# The capacity constraint.
subject to C_capacity:
    sum {j in N} W[j] * X[j] <= C;
