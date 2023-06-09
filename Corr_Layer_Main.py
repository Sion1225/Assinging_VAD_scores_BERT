"""Part of pre-train with best hyper-parameters FFNN_VAD_Model."""

import tensorflow as tf
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error
import os
from datetime import datetime

from FFNN_VAD_model import FFNN_VAD_model

# Setting for Tensorboard
dir_name = "Assinging_VAD_scores_BERT\Learning_log"
file_name = "FFNN_VAD_Model_ver1_MSE_00048_" + datetime.now().strftime("%Y%m%d-%H%M%S") # <<<<< Edit

def make_tensorboard_dir(dir_name):
    root_logdir = os.path.join(os.curdir, dir_name)
    return os.path.join(root_logdir, file_name)

# Read DataSet
df = pd.read_csv("Assinging_VAD_scores_BERT\DataSet\emobank.csv")
# Extract VAD from dataset
VAD = df[["V","A","D"]]

# Split data for train and test
X_train, X_test = train_test_split(np.array(VAD), test_size=0.05, random_state=1225)

# Set input and label
y_train = X_train
y_test = X_test
#print(f"Input and Label's sample: {X_train[3]}")

# Set Hyper-parameter
# ==================================================
# Best Hyper parameters
# Hyperparameter values with a dropout of 0 are discarded through experiments (overfitting & cheating risk)
# He_normal & output layer: linear
# ver.1: MSE: 0.00048316358499479045, 'activity_l2_lambda': 0.0006709484309491943, 'batch_size': 18, 'dropout_rate': 0.014174288321380634, 'epochs': 12, 'kernel_l2_lambda': 0.0002161249853798384, 'units': 429
# ver.2: MSE: 0.00010226922018003949, 'activity_l2_lambda': 0.002229853672868904, 'batch_size': 43, 'dropout_rate': 0.13422752486715445, 'epochs': 14, 'kernel_l2_lambda': 0.0015969551956577952, 'units': 475
# ver.3: MSE: 0.00048299373531979147, 'activity_l2_lambda': 0.0027801164716184518, 'batch_size': 12, 'dropout_rate': 0.263572048877131, 'epochs': 13, 'kernel_l2_lambda': 0.0009195709533158637, 'units': 237

# He_uniform & output layer: linear
# ver.4: MSE: 0.004850356600907168, 'activity_l2_lambda': 0.0023742977480897165, 'batch_size': 8, 'dropout_rate': 0.10319616603117594, 'epochs': 8, 'kernel_l2_lambda': 0.0007538979997234782, 'units': 208
# ver.5: MSE: 0.0022572217535319883, 'activity_l2_lambda': 0.0011767368355160217, 'batch_size': 21, 'dropout_rate': 0.24560460384301647, 'epochs': 13, 'kernel_l2_lambda': 0.00037475804946315855, 'units': 477
# ver.6: MSE: 0.0005390459871742311, 'activity_l2_lambda': 0.0008971675445227548, 'batch_size': 30, 'dropout_rate': 0.055347911812369935, 'epochs': 15, 'kernel_l2_lambda': 0.0005002548666769983, 'units': 546
# ===================================================
Corr_model = FFNN_VAD_model( # ----- Edit -----
    units=429,
    kernel_l2_lambda=0.0002161249853798384,
    activity_l2_lambda=0.0006709484309491943,
    dropout_rate=0.014174288321380634
) #--------------------------------------------
Corr_model.compile(optimizer="Adam", loss="mse", metrics=["mse"])

# Define Callback function
TB_log_dir = make_tensorboard_dir(dir_name)
TensorB = tf.keras.callbacks.TensorBoard(log_dir=TB_log_dir)

# Model train
Corr_model.fit(X_train, y_train, batch_size = 18, epochs = 12, callbacks=[TensorB]) # <<<<< Edit

# Save Model
Corr_model.save(r"Assinging_VAD_scores_BERT\\Model\\" + file_name)

# Load Model
#Corr_model = tf.keras.models.load_model("Assinging_VAD_scores_BERT\Model\FFNN_VAD_Model_###")

# Predict
pred = Corr_model.predict(X_test)

# Evaluate
out_of_range_count = tf.reduce_sum(tf.cast((pred > 5) | (pred < 0), tf.int32))
print(y_test[:25])
print(pred[:25])

model_MSE = mean_squared_error(y_test, pred)
print(f"MSE: {model_MSE}")
print(f"Count of out of range (0<= pred <=5): {out_of_range_count}")