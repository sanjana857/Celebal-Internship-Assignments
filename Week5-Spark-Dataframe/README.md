# Week 5 - Apache Spark DataFrame Operations

## Overview

This project was completed as part of the Week 5 assignment focused on learning Apache Spark and performing data processing using Spark DataFrames.

The objective of this assignment was to understand Spark fundamentals and apply various DataFrame operations such as data cleaning, filtering, transformation, aggregation, grouping, and pipeline creation on a sample dataset.

---

## Objectives

* Understand the limitations of traditional MapReduce.
* Learn why Apache Spark is faster and more efficient for big data processing.
* Work with Spark DataFrames.
* Perform data cleaning and preprocessing.
* Apply filtering conditions on datasets.
* Modify schemas using type casting and column renaming.
* Perform aggregation and grouping operations.
* Understand concepts such as Shuffle and Wide Transformations.
* Build a complete data processing pipeline using Spark.

---

## Technologies Used

* Apache Spark
* PySpark
* Python
* Jupyter Notebook
* Pandas

---

## Project Structure

```text
spark-assignment/
│
├── data/
│   └── dataset.csv
│
├── notebook/
│   ├── spark_assignment.ipynb
│   └── week5_questions_solution.ipynb
│
├── output/
│   └── results.csv
│
└── README.md
```

---

## Tasks Performed

### 1. Data Loading

* Loaded the dataset into a Spark DataFrame.
* Explored records using DataFrame functions.
* Inspected schema and record counts.

### 2. Data Cleaning

* Removed duplicate records.
* Handled missing values.
* Filtered invalid records containing incomplete information.

### 3. Data Filtering

* Filtered records based on region.
* Filtered records based on product category.
* Applied multiple filtering conditions using age and subscription type.

### 4. Data Transformation

* Converted timestamp columns into appropriate data types.
* Renamed columns for better readability.
* Applied explicit type casting where required.

### 5. Aggregation Operations

* Calculated record counts.
* Computed total sales and revenue.
* Found minimum, maximum, and average values.

### 6. Grouping and Analysis

* Grouped data by product category.
* Grouped data by store.
* Performed city-wise analysis.
* Generated category-wise sales insights.

### 7. Complete Processing Pipeline

* Removed duplicate records.
* Filled missing values.
* Applied grouping and aggregation operations.
* Generated final output results.

---

## Key Concepts Covered

* MapReduce vs Apache Spark
* In-Memory Computing
* Spark DataFrames
* Data Cleaning
* Data Filtering
* Data Transformation
* Aggregation Functions
* GroupBy Operations
* Shuffle Operations
* Wide Transformations
* Schema Inference
* Data Processing Pipelines

---

## Output

The processed results generated from the final Spark pipeline are available in the `output/results.csv` file.

---

## Learning Outcomes

Through this assignment, I gained hands-on experience with Apache Spark DataFrames and learned how different data processing operations can be combined to create efficient analytical workflows. The assignment also helped me understand how Spark handles large-scale data processing through distributed computing and in-memory execution.
