# option;

option presolve 10;
option show_stats 2;
# option times 1;
# option gentimes 1;

option cplex_options  'tech:outlev=1';
option gurobi_options 'tech:outlev=1';
option highs_options  'tech:outlev=1';


display C;
display N, P, W, B;

expand C_capacity;

expand objective_function;

solve;

display objective_function;
display X;
