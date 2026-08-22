# Python for Data Science - Quick Reference Cheat Sheet

> Quick syntax reference for both tracks of the course. If you are looking for the
> teaching material itself: [Track 1 — Introduction Session](01_introduction/) ·
> [Track 2 — Advanced & Self-Learning](02_advanced_self_learning/).

## 🐍 Essential Python Patterns for Data Science

### 1. Data Import and Setup
```python
# Standard data science imports
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Set display options
pd.set_option('display.max_columns', None)
pd.set_option('display.width', None)

# --- Bridging AI & Society course plot style -------------------------------
BAS_BLUE = "#416bcc"   # brand accent (lapis blue) — primary series
BAS_INK  = "#1c2025"   # brand ink — text/edges
BAS_AMBER, BAS_GREEN, BAS_RED = "#d9822b", "#3a9e6e", "#c8504f"
BAS_PURPLE, BAS_GREY = "#7a5fb5", "#8a919c"
BAS_PALETTE = [BAS_BLUE, BAS_AMBER, BAS_GREEN, BAS_RED, BAS_PURPLE, BAS_GREY]
plt.rcParams["axes.prop_cycle"] = plt.cycler(color=BAS_PALETTE)
```

### 2. Loading Data
```python
# CSV files
df = pd.read_csv('data.csv')
df = pd.read_csv('data.csv', index_col=0)  # Use first column as index
df = pd.read_csv('data.csv', parse_dates=['date_column'])  # Parse dates

# Excel files
df = pd.read_excel('data.xlsx', sheet_name='Sheet1')

# JSON files
df = pd.read_json('data.json')
```

### 3. Quick Data Exploration
```python
# Basic info
print(df.shape)          # Dimensions
print(df.info())         # Data types and null counts
print(df.describe())     # Statistical summary
print(df.head())         # First 5 rows
print(df.tail())         # Last 5 rows

# Null values
print(df.isnull().sum())           # Count nulls per column
print(df.isnull().sum().sum())     # Total null count
df.dropna()                        # Remove rows with nulls
df.fillna(0)                       # Fill nulls with 0
```

### 4. Data Selection and Filtering
```python
# Select columns
df['column_name']                  # Single column
df[['col1', 'col2']]              # Multiple columns

# Filter rows
df[df['column'] > 5]              # Conditional filtering
df[df['column'].isin(['A', 'B'])] # Filter by list of values
df[(df['col1'] > 5) & (df['col2'] < 10)]  # Multiple conditions

# Boolean indexing
mask = df['column'] > df['column'].mean()
df[mask]
```

### 5. Data Cleaning
```python
# Remove duplicates
df.drop_duplicates()
df.drop_duplicates(subset=['column1'])  # Based on specific column

# Handle missing values
df.dropna(axis=0)          # Drop rows with any null
df.dropna(axis=1)          # Drop columns with any null
df.fillna(method='ffill')  # Forward fill
df.fillna(df.mean())       # Fill with column mean

# Data type conversion
df['column'] = df['column'].astype('int64')
df['date'] = pd.to_datetime(df['date'])
```

### 6. Data Aggregation
```python
# Group by operations
df.groupby('category').mean()           # Mean by group
df.groupby('category').size()           # Count by group
df.groupby('category').agg({'col1': 'sum', 'col2': 'mean'})  # Multiple aggregations

# Pivot tables
pd.pivot_table(df, values='value', index='row_var', columns='col_var', aggfunc='mean')
```

### 7. Creating New Columns
```python
# Simple calculations
df['new_col'] = df['col1'] + df['col2']
df['percentage'] = df['part'] / df['total'] * 100

# Conditional columns
df['category'] = df['score'].apply(lambda x: 'High' if x > 80 else 'Low')
df['grade'] = np.where(df['score'] > 90, 'A', 
                      np.where(df['score'] > 80, 'B', 'C'))
```

### 8. Basic Visualization
```python
# Quick plots
df['column'].hist()                # Histogram
df['column'].plot(kind='box')      # Box plot
df.plot(x='col1', y='col2', kind='scatter')  # Scatter plot

# Matplotlib basics
plt.figure(figsize=(10, 6))
plt.plot(df['x'], df['y'])
plt.xlabel('X Label')
plt.ylabel('Y Label')
plt.title('Title')
plt.show()

# Seaborn basics
sns.histplot(data=df, x='column')
sns.boxplot(data=df, x='category', y='value')
sns.scatterplot(data=df, x='col1', y='col2', hue='category')
```

### 9. Statistical Analysis
```python
# Descriptive statistics
df['column'].mean()       # Mean
df['column'].median()     # Median
df['column'].std()        # Standard deviation
df['column'].quantile([0.25, 0.5, 0.75])  # Quartiles

# Correlation
df.corr()                 # Correlation matrix
df['col1'].corr(df['col2'])  # Correlation between two columns
```

### 10. Data Export
```python
# Save to CSV
df.to_csv('output.csv', index=False)

# Save to Excel
df.to_excel('output.xlsx', index=False)

# Save specific columns
df[['col1', 'col2']].to_csv('subset.csv', index=False)
```

## 🔧 Common Debugging Patterns

### 1. Check Data Types
```python
print(df.dtypes)
print(type(df['column'].iloc[0]))
```

### 2. Handle Errors Gracefully
```python
try:
    result = df['column'].astype('int')
except ValueError as e:
    print(f"Error converting to int: {e}")
    # Handle the error appropriately
```

### 3. Validate Data
```python
# Check for expected values
assert df['column'].min() >= 0, "Negative values found"
assert not df['column'].isnull().any(), "Null values found"

# Check data shape
expected_columns = ['col1', 'col2', 'col3']
assert all(col in df.columns for col in expected_columns), "Missing columns"
```

## 📊 ML Notebook Patterns

### 1. Standard ML Workflow
```python
# 1. Import libraries
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# 2. Prepare data
X = df[['feature1', 'feature2']]  # Features
y = df['target']                  # Target variable

# 3. Split data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# 4. Train model
model = LinearRegression()
model.fit(X_train, y_train)

# 5. Make predictions
y_pred = model.predict(X_test)

# 6. Evaluate
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)
print(f"MSE: {mse:.2f}, R²: {r2:.2f}")
```

### 2. Feature Engineering
```python
# Create polynomial features
from sklearn.preprocessing import PolynomialFeatures
poly = PolynomialFeatures(degree=2)
X_poly = poly.fit_transform(X)

# Scale features
from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)
```

### 3. Model Evaluation
```python
# Cross-validation
from sklearn.model_selection import cross_val_score
scores = cross_val_score(model, X, y, cv=5)
print(f"CV Score: {scores.mean():.2f} (+/- {scores.std() * 2:.2f})")

# Confusion matrix (classification)
from sklearn.metrics import confusion_matrix, classification_report
cm = confusion_matrix(y_test, y_pred)
print(classification_report(y_test, y_pred))
```

## 💡 Pro Tips

1. **Always explore your data first**: Use `.head()`, `.info()`, `.describe()`
2. **Handle missing values explicitly**: Don't ignore them
3. **Use meaningful variable names**: `student_scores` not `data`
4. **Comment your code**: Explain the why, not just the what
5. **Save intermediate results**: Don't recalculate everything each time
6. **Use version control**: Track your changes with git
7. **Document your assumptions**: What does your analysis assume?
8. **Validate your results**: Do they make sense?

## 🚨 Common Pitfalls to Avoid

1. **Data leakage**: Don't use future information to predict the past
2. **Overfitting**: Your model works too well on training data
3. **Underfitting**: Your model is too simple
4. **Not splitting data**: Always have separate training and test sets
5. **Ignoring data quality**: Clean data is crucial
6. **Not checking assumptions**: Understand your model's requirements
7. **Correlation vs. causation**: Correlation doesn't imply causation
8. **Not validating results**: Always double-check your findings

---

*This cheat sheet covers the most common patterns you'll use in data science. Keep it handy as you work through real projects!*
