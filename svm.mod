


param m;                        # Number of training examples
param n;                        # Number of features
param A{1..m, 1..n};            # Feature matrix
param y{1..m};                  # Labels (+1 or -1)
param v = 1;                    # Regularization parameter

var w{1..n};                    # Weight vector
var gamma;                      # Bias term
var s{1..m} >= 0;               # Slack variables

minimize objective:
    0.5 * sum{i in 1..n} w[i]^2 + v * sum{i in 1..m} s[i];

subject to correct_class{i in 1..m}:
    (sum{j in 1..n} w[j]*A[i,j] + gamma) * y[i] + s[i] >= 1; 