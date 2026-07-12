# 🏡 Airbnb Data Pipeline using dbt & Snowflake

> 🚀 **End-to-End ELT Data Engineering Project** built using **dbt Core**, **Snowflake**, **SQL**, and the **Medallion Architecture (Bronze → Silver → Gold)**.

---

## 🌟 Project Overview

This project demonstrates how to build a scalable ELT pipeline using **dbt Core** and **Snowflake**. Raw Airbnb datasets are transformed into clean, analytics-ready models by following industry-standard data engineering practices.

### 🎯 Key Highlights

- ⚡ Incremental Data Loading
- 🏗️ Medallion Architecture
- ❄️ Snowflake Cloud Warehouse
- 📊 Fact & Dimension Modeling
- 📸 dbt Snapshots (SCD Type 2)
- 🧹 Data Cleaning & Standardization
- 🔄 Reusable SQL Models
- 🌿 Version Control with Git

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| ❄️ Snowflake | Cloud Data Warehouse |
| 🏗️ dbt Core | Data Transformation |
| 📝 SQL | Data Modeling |
| 🐍 Python | Runtime |
| 📄 YAML | Snapshot Configuration |
| 🌿 Git & GitHub | Version Control |

---

## 🏗️ Solution Architecture

```text
              Raw Airbnb Dataset
                     │
                     ▼
             🥉 Bronze Layer
          (Incremental Loading)
                     │
                     ▼
             🥈 Silver Layer
      (Cleaning & Business Logic)
                     │
                     ▼
              🥇 Gold Layer
        ┌────────┼─────────┐
        ▼        ▼         ▼
   Fact Table  Dimensions   OBT
                     │
                     ▼
         📊 Analytics & Reporting
```

---

## 📂 Project Structure

```text
Airbnb_DBT_Snowflake/
│
├── models/
│   ├── Bronze/
│   │   ├── bronze_bookings.sql
│   │   ├── bronze_hosts.sql
│   │   └── bronze_listings.sql
│   │
│   ├── Silver/
│   │   ├── silver_bookings.sql
│   │   ├── silver_hosts.sql
│   │   └── silver_listings.sql
│   │
│   └── Gold/
│       ├── fact.sql
│       └── obt.sql
│
├── snapshots/
│   ├── dim_bookings.yml
│   ├── dim_hosts.yml
│   └── dim_listings.yml
│
├── macros/
├── dbt_project.yml
└── README.md
```

---

## 🥉 Bronze Layer

The Bronze layer ingests raw Airbnb data into Snowflake using **incremental dbt models**.

✨ Features

- Incremental Loading
- Raw Data Storage
- High Performance
- Source Preservation

---

## 🥈 Silver Layer

The Silver layer transforms raw data into clean, standardized datasets.

✨ Transformations

- Data Cleaning
- Null Handling
- Business Rules
- Derived Columns
- Standardization
- Data Quality Improvements

---

## 🥇 Gold Layer

The Gold layer creates business-ready datasets for analytics.

Includes:

- 📊 Fact Table
- 📚 Dimension Tables
- 📈 One Big Table (OBT)

---

## 📸 Snapshots

dbt Snapshots are used to maintain historical records for dimension tables using **Slowly Changing Dimension (SCD Type 2)** methodology.

Snapshot Files:

- dim_bookings.yml
- dim_hosts.yml
- dim_listings.yml

---

## 🚀 Getting Started

### Clone Repository

```bash
git clone https://github.com/Divya2001-raj/Airbnb_DBT_Snowflake.git
cd Airbnb_DBT_Snowflake
```

### Install Dependencies

```bash
pip install dbt-snowflake
```

### Configure Snowflake Profile

Update your local `profiles.yml` with your Snowflake connection details.

> ⚠️ **Do not commit `profiles.yml` containing credentials to GitHub.**

---

## ⚡ Run dbt

```bash
dbt debug
dbt run
dbt test
dbt docs generate
dbt docs serve
```

---

## 🎯 Skills Demonstrated

- ✅ Data Engineering
- ✅ Snowflake
- ✅ dbt Core
- ✅ SQL
- ✅ Incremental Models
- ✅ Medallion Architecture
- ✅ ELT Pipelines
- ✅ Fact & Dimension Modeling
- ✅ SCD Type 2
- ✅ Git & GitHub

---

## 🚀 Future Enhancements

- 📌 dbt Source Freshness
- 📌 Data Quality Tests
- 📌 GitHub Actions CI/CD
- 📌 Airflow Orchestration
- 📌 dbt Documentation Hosting
- 📌 Performance Optimization

---

## 👩‍💻 Author

**Divya R**

**Data Engineer | Snowflake | dbt | SQL | Python**

- 🔗 GitHub: https://github.com/Divya2001-raj
- 💼 LinkedIn: *(Add your LinkedIn profile here)*

---

## ⭐ Support

If you found this project useful, please consider **starring ⭐ the repository**.

Happy Coding! 🚀