# Week 6 – Apache Spark Architecture and Efficient Data Processing

### Overview

This repository contains my Week 6 internship assignment completed as part of the Celebal Technologies Summer Internship Program. The objective of this assignment was to understand the fundamentals of Apache Spark and perform different data processing tasks using PySpark.

During this assignment, I learned how Spark processes data efficiently using distributed computing concepts such as the Driver Program, Cluster Manager, Executors, Lazy Evaluation, and DAG (Directed Acyclic Graph). I also worked with Spark DataFrames to perform filtering, schema handling, data transformations, null value handling, and file processing using both CSV and Parquet formats.

---

# Assignment Objectives

* Understand the architecture of Apache Spark.
* Learn the roles of the Driver, Cluster Manager, and Executors.
* Understand Lazy Evaluation and the Directed Acyclic Graph (DAG).
* Read data from CSV files with automatic schema detection.
* Perform filtering and selection using Spark DataFrames.
* Rename columns and convert data types.
* Create new columns using existing values.
* Handle missing values in the dataset.
* Compare CSV and Parquet file formats.
* Understand Predicate Pushdown and Shuffle operations.
* Build a simple ETL (Extract, Transform, Load) pipeline.
* Save processed data in both CSV and Parquet formats.
* Follow efficient Spark practices while working with datasets.

---

# Project Structure

```text
Week6-Spark-Architecture
│
├── data
│   └── source.csv
│
├── notebook
│   ├── spark_assignment.ipynb
│   └── week6_questions_solution.ipynb
│
├── output
│   ├── processed_csv
│   ├── processed_parquet
│   └── q12_output_csv
│
└── README.md
```

---

# Files Included

### `spark_assignment.ipynb`

This notebook contains the practical implementation of the Week 6 assignment. It includes reading the dataset, cleaning the data, applying transformations, handling missing values, creating new columns, comparing file formats, building an ETL pipeline, and saving the processed data.

### `week6_questions_solution.ipynb`

This notebook contains the solutions to all fifteen questions. Both theoretical concepts and practical questions have been answered using Markdown explanations, PySpark code, outputs, and observations.

### `source.csv`

A sample retail dataset created for this assignment since no dataset was provided.

### `output`

Contains the processed datasets generated during execution in CSV and Parquet formats.

---

# Technologies Used

* Python
* PySpark
* Apache Spark
* Jupyter Notebook
* VS Code

---

# Concepts Covered

* Spark Architecture
* Driver Program
* Cluster Manager
* Executors
* Spark Session
* DataFrames
* Schema Inference
* Filtering and Selection
* Column Renaming
* Data Type Conversion
* New Column Creation
* Handling Missing Values
* Lazy Evaluation
* Directed Acyclic Graph (DAG)
* Transformations and Actions
* Predicate Pushdown
* Shuffle Operations
* CSV vs Parquet
* ETL Pipeline

---

# Learning Outcome

Through this assignment, I gained practical experience in working with Apache Spark using PySpark. I understood how Spark optimizes execution using Lazy Evaluation and DAG, how DataFrame operations are performed efficiently, and why Parquet is preferred over CSV for analytical workloads. I also learned how to build a simple ETL workflow and save processed datasets in different formats.

This assignment helped me strengthen my understanding of Spark Architecture as well as the practical implementation of data processing techniques that are commonly used in data engineering.
