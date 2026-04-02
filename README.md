# Data Pipeline Project: dbt + Azure Data Factory + Airflow Comparison

## 🔷 Project Overview

This project demonstrates a simple modern data pipeline using:

* dbt for data transformation
* Azure Data Factory (ADF) for data ingestion and orchestration
* Comparison with Apache Airflow for workflow orchestration

---

## 🔷 Architecture

1. Raw data (CSV) stored in Blob Storage
2. ADF pipeline ingests data into database
3. dbt transforms raw data into analytics-ready models
4. Final data used for reporting / dashboards

---

## 🔷 Tools Used

* dbt (Data Build Tool) → Transformation layer
* Azure Data Factory → ETL & orchestration
* Apache Airflow → Alternative orchestration tool

---

## 🔷 dbt Models

The dbt project includes:

* **Staging models** → Clean raw data
* **Mart models** → Business-level transformations

Example:

* updated_airline_dbt → cleaned_airline_data → aggregated_metrics

---

## 🔷 ADF Pipeline

ADF is used to:

* Connect to data sources using Linked Services
* Define datasets (CSV, SQL tables)
* Create pipelines with activities
* Schedule using triggers

---

## 🔷 ADF vs Airflow (Summary)

| Feature     | ADF              | Airflow               |
| ----------- | ---------------- | --------------------- |
| Type        | Managed ETL tool | Workflow orchestrator |
| Interface   | Visual (GUI)     | Code (Python)         |
| Setup       | No setup         | Requires setup        |
| Flexibility | Limited to Azure | Highly flexible       |
| Use Case    | Data pipelines   | Complex workflows     |

---

## 🔷 Key Learnings

* Understanding of ETL pipeline design
* Hands-on with dbt models and transformations
* Knowledge of orchestration tools (ADF vs Airflow)
* Real-world pipeline architecture concepts

---

## 🔷 Conclusion

ADF is ideal for quick, managed pipelines in Azure, while Airflow is better suited for complex, code-driven workflows. dbt fits as a transformation layer in both architectures.

