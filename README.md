# Implementation of a Support Vector Machine in AMPL

This project implements a Support Vector Machine (SVM) from scratch, focusing on its formulation as an optimization problem. Using AMPL, we define and solve both the primal and dual SVM models, relying on CPLEX as the optimization solver. Python is used for data preprocessing, dataset generation and experiment handling.

The implementation is tested on multiple datasets, including both synthetic and real-world data, as well as non-linearly separable cases where the kernel method is required. For each dataset, we split the data into training and testing sets and evaluate model performance through accuracy, analyzing how well the SVM generalizes to unseen data.

Full methodology, results and discussion are presented in the attached report.
