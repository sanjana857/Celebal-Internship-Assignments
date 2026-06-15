# Azure Data Pipeline using Azure Data Factory

## Project Overview

This project demonstrates an end-to-end data pipeline built using Microsoft Azure services. The pipeline reads a CSV file from Azure Blob Storage, validates its metadata, and copies it to another Blob container using Azure Data Factory.

The project provides practical experience with Azure Storage, Azure Data Factory, Linked Services, Datasets, Pipeline Activities, and IAM role management.

---

## Objective

* Understand Azure cloud fundamentals.
* Create and configure Azure Storage Account and Blob Containers.
* Build a data pipeline using Azure Data Factory.
* Validate the source file using Get Metadata activity.
* Copy data from the source container to the destination container.
* Monitor successful pipeline execution.

---

## Azure Services Used

* Azure Resource Group
* Azure Storage Account
* Azure Blob Storage
* Azure Data Factory
* Linked Service
* Source Dataset
* Destination Dataset
* Get Metadata Activity
* Copy Data Activity
* Identity and Access Management (IAM)

---

## Project Architecture

The pipeline follows the workflow below:

```
raw-data/superstore_sales.csv
        │
        ▼
Source Dataset
        │
        ▼
Get Metadata
        │
        ▼
Copy Data
        │
        ▼
Destination Dataset
        │
        ▼
processed-data/superstore_processed.csv
```

The architecture diagram is available in the **03_Architecture** folder.

---

## Implementation Steps

1. Created an Azure Resource Group.
2. Created an Azure Storage Account.
3. Created two Blob Containers:

   * raw-data
   * processed-data

4. Uploaded the Superstore CSV dataset.
5. Created an Azure Data Factory instance.
6. Configured Linked Service with Blob Storage.
7. Created Source and Destination Datasets.
8. Added Get Metadata activity.
9. Added Copy Data activity.
10. Executed the pipeline successfully.
11. Verified the output file in the destination container.
12. Configured IAM roles for secure access.

---

## Project Structure

```
Week4-Azure-Cloud

├── 01_Dataset
├── 02_Documentation
├── 03_Architecture
├── 04_Screenshots
├── 05_Output
└── README.md
```

---

## Result

* Resource Group created successfully.
* Storage Account configured successfully.
* Blob containers created successfully.
* Source CSV uploaded successfully.
* Metadata validated successfully.
* Data copied successfully.
* Output file generated in the destination container.
* Pipeline executed without errors.

---

## Conclusion

This project successfully demonstrates an end-to-end Azure Data Pipeline using Azure Data Factory. The implementation shows how cloud storage and data integration services can be combined to validate and transfer files efficiently. It also provides hands-on understanding of Azure cloud services and ETL pipeline development.

---