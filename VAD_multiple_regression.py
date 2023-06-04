import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

import xgboost as xgb
from bayes_opt import BayesianOptimization


# Read EMObanck and separate VAD
df = pd.read_csv("Assinging_VAD_scores_BERT\DataSet\emobank.csv")

V, A, D = df["V"], df["A"], df["D"]

# Predict D from V and A
# Best Hyper-parameter: target=-0.04171, colsample_bytree=0.5, learning_rate=0.1, max_depth=3, n_estimators=144.4, subsample=0.7, reg_alpha=0
X_Data = np.vstack((V, A))
X_Data = X_Data.transpose()

Y_Data = D

# Split data for Train and Test
X_train, X_test, y_train, y_test = train_test_split(X_Data, Y_Data, test_size=0.1, random_state=11)
y_train = y_train.reset_index(drop=True)
y_test = y_test.reset_index(drop=True)

# Define the objective function for Bayesian Optimization
class XGB_evaluate: 
    # Define the parameter bounds for Bayesian Optimization
    param_bounds = {
        'max_depth': (2, 9),
        'learning_rate': (0.01, 0.2),
        'n_estimators': (100, 300),
        'subsample': (0.4, 0.9),
        'colsample_bytree': (0.4, 0.9),
    }
    
    def __init__(self, X_train, y_train):
        self.X_train = X_train
        self.y_train = y_train
    
    def xgb_evaluate(self, max_depth, learning_rate, n_estimators, subsample, colsample_bytree):
        model = xgb.XGBRegressor(
            max_depth=int(max_depth),
            learning_rate=learning_rate,
            n_estimators=int(n_estimators),
            subsample=subsample,
            colsample_bytree=colsample_bytree,
            tree_method="gpu_hist",
            gpu_id=0
        )
        model.fit(self.X_train, self.y_train)
        y_pred = model.predict(self.X_train)
        mse = mean_squared_error(self.y_train, y_pred)
        return -mse  # Minimize the negative MSE

    # Run Bayesian Optimization
    def __call__(self):
        xgb_bo = BayesianOptimization(self.xgb_evaluate, self.param_bounds)
        xgb_bo.maximize(init_points=50, n_iter=200) #
    
        return xgb_bo.max['params']

# Get the best hyperparameters
best_params = XGB_evaluate(X_train, y_train)()

# Train the final XGBoost model with the best hyperparameters
XGB_model = xgb.XGBRegressor(
    max_depth=int(best_params['max_depth']),
    learning_rate=best_params['learning_rate'],
    n_estimators=int(best_params['n_estimators']),
    subsample=best_params['subsample'],
    colsample_bytree=best_params['colsample_bytree'],
    tree_method="gpu_hist",
    gpu_id=0
)
XGB_model.fit(X_train, y_train)

# Predict
y_predict = XGB_model.predict(X_test)

# Verify
for i in range(495, 505):
    print(y_test[i], " | ", y_predict[i])

mse = mean_squared_error(y_test, y_predict)
print("MSE: ", mse) #0.0417