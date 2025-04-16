#
# The AMPL implementation of Subset Sum Problem.
#
# author: Zbigniew Romanowski
#

# The set of indexes
set N; 
check: card(N) >= 2;


# Capacity
param C > 0;


# Weigths and their constraiins.
param W{N} > 0;
check: sum {j in N} W[j] > C;
check{j in N}: W[j] <= C;


# Decision variable
var X{N} binary;


# The objective function.
maximize objective_function:
    sum {j in N} W[j] * X[j];


# The capacity constraint.
subject to C_capacity:
    sum {j in N} W[j] * X[j] <= C;

