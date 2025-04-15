#
# The AMPL implementation of Knapsack Problem
#

set N; 
check: card(N) >= 2;

# capacity
param C > 0;

# weigths
param W{N} > 0;
check: 
    sum {j in N} W[j] > C;
    
check{j in N}: 
    W[j] <= C;

# profits
param P{N} > 0;

# decision variable
var X{N} binary;


# The objective function.
maximize objective_function:
    sum {j in N} P[j] * X[j];


subject to C_capacity:
    sum {j in N} W[j] * X[j] <= C;

