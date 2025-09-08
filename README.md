# TFT Snowflake Project

## 📌 Overview
This project analyzes **Teamfight Tactics (TFT)** match data (Platinum → Challenger) using **Snowflake SQL**.  
We build a Snowflake data pipeline that stages raw CSV files, loads them into structured tables, and runs queries on placements, comps, and champions.

## ⚙️ Tech Stack
- Snowflake (staging, file formats, VARIANT JSON parsing)
- SQL (ETL + analytics)
- GitHub (version control via Snowflake Git integration)

## 📂 Repo Structure
- `sql/01_create_database.sql` → Create database  
- `sql/02_create_schema.sql` → Create schema  
- `sql/03_create_warehouse.sql` → Create warehouse  
- `sql/04_create_stage.sql` → Create internal stage  
- `sql/05_create_file_format.sql` → Define CSV file format  
- `sql/06_create_table.sql` → Define matches table schema  
- `sql/07_copy_into.sql` → Load data from staged CSVs  
- `sql/08_analysis_queries.sql` → Validation & analysis queries  

## 🚀 How to Run
1. Upload CSVs (`Platinum`, `Diamond`, `Master`, `GrandMaster`, `Challenger`) to stage:
   ```sql
   PUT file://<local_path>/TFT_Platinum_MatchData.csv @tft_stage;
