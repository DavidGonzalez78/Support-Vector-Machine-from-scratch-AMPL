


param m;                            # Number of training examples
param K{i in 1..m, j in 1..m};      # Kernel matrix: K_ij = x_i^T x_j
param y{1..m};                      # Labels (+1 or -1)
param v = 1;                        # Regularization parameter

var lambda{1..m} >= 0, <= v;        # Dual variables

maximize dual_obj:
    sum{i in 1..m} lambda[i]
    - 0.5 * sum{i in 1..m, j in 1..m}
      lambda[i] * lambda[j] * y[i] * y[j] * K[i,j];

subject to equality_constraint:
    sum{i in 1..m} lambda[i] * y[i] = 0;