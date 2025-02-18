import pandas as pd
import numpy as np

# Load incident dataset
df = pd.read_csv("incident_data.csv")

# Identify recurring failures
df["issue_frequency"] = df.groupby("issue_type")["incident_id"].transform("count")

# Predict potential failures based on past trends
df["failure_risk"] = np.where(df["issue_frequency"] > 10, "High", "Low")

# Save results
df.to_csv("failure_prediction.csv", index=False)

print("Predictive maintenance analysis completed.")
