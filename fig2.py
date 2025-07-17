#!/usr/bin/python3

import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns


md_df = pd.read_csv("data/md_h1_2024.csv",
                    nrows=42)
num_fill_col = 42 - md_df.isna().sum()
pct_fill_col = num_fill_col / 42

fig, ax1 = plt.subplots()
color = "tab:blue"
ax1.set_xlabel("Proportion of Populated Entries")
ax1.set_ylabel("# Metadata Attributes", color=color)
ax1.hist(pct_fill_col, label="# Metadata Attributes with Empty Entries")
ax1.tick_params(axis="y", labelcolor=color)

ax2 = ax1.twinx()
color = "tab:red"
ax2.set_ylabel("Cumulative Proportion of Metadata Attributes", color=color)
ax2.hist(pct_fill_col, density=True, cumulative=True, 
         histtype="step", label="Cumulative Empty Entries",
         color=color)
ax2.tick_params(axis="y", labelcolor=color)

fig.suptitle("Distribution of Populated Entries per Metadata Attribute")
fig.tight_layout()
plt.savefig("md_empty.png", dpi=1000)

pct_fill_col.describe()
