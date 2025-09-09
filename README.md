# TFT Snowflake Project

This project analyzes **Teamfight Tactics (TFT) ranked match data** using **Snowflake SQL** for data processing and **Power BI** for visualization.  
It demonstrates how to design an end-to-end data pipeline: **data ingestion → transformation → analytics → dashboarding**.

---

## Repository Structure

## 📂 Repository Structure

**tft-snowflake/**
- **sql/** – SQL scripts for Snowflake  
  - 01_create_database.sql  
  - 02_create_schema.sql  
  - 03_create_stage.sql  
  - 04_create_file_format.sql  
  - 05_create_tables.sql  
  - 06_copy_into.sql  
  - 07_analysis_queries.sql  
- **powerbi_dashboard/** – Power BI files and screenshots  
  - TFT_Dashboard.pbix  
  - **Screenshots/**  
    - overview.png  
    - traits.png  
    - top10traits.png  
  - README.md  
- **TFT_CSV_DATA.zip** – Raw CSV datasets  
- **.gitignore**  
- **README.md** – Project overview (this file)  

---

## 🛠 Setup Instructions

### 1. Snowflake Setup
Run the SQL scripts in order (01 → 07) to:  
- Create the database, schema, and warehouse  
- Define stages & file formats  
- Load CSV match data  
- Build analysis queries & views  

### 2. Power BI Dashboard
- Open `powerbi_dashboard/TFT_Dashboard.pbix`  
- Update the Snowflake connection (URL, warehouse, DB, schema)  
- Refresh to load data  

---

### Dashboard Preview

Overview
![Overview](powerbi_dashboard/Screenshots/Dashboard.png)

---

Analysis Highlights
- **Avg Placement, Level, and Game Duration** KPIs  
- **Placement distribution across tiers** (Platinum → Challenger)  
- **Comp Score vs Placement** (relationship between comp strength & rank outcome)  
- **Trait effectiveness** (which traits correlate with better results)  
- **Top 10 Traits by Win Rate**  

---

Tech Stack
- **Snowflake** (Data warehouse & SQL processing)  
- **Power BI** (Visualization & dashboarding)  
- **GitHub** (Version control & project sharing)  
