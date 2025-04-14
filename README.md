# Cassandra Medallion Architecture Project

## Project overview

This project demonstrates the **Medallion Architecture** (Bronze → Silver → Gold) using **Apache Cassandra (via Astra DB)** and **Python**, based on a fruit sales dataset

### Version 1: `cassandra_fruit_sales.ipynb`
- Connects to the Cassandra keyspace: **big_data_fruit** 
- Implements the medallion architecture entirely in **python**
- Reads and processes `sales_100.csv`
- Creates and populates sales_records, bronze, silver and gold tables/collections

### Version 2: `cassandra_fruit_sales_2.ipynb`
- Uses a combination of **CQL** and **Python**
- Connects to the Cassandra keyspace: **medallion**

**Workflow for version 2**
- Tables are created by executing `_setup.cql` in Astra DB CQL console
- Data is loaded from `sales_100.csv` and processed in python
- The code connects to the Cassandra cluster using the secure bundle
- Tables are populated in python by running `cassandra_fruit_sales_2.ipynb`
- Requires:
  - `_setup.cql` → contains all `CREATE TABLE` statements
  - `secure-connect-big-data-fruit.zip` → Astra DB secure connection bundle

## Screenshots

All Gold tables were queried using CQL, and screenshots of the outputs are saved under the `screenshots/` folder for verification:
- `gold_regional_profits`
- `gold_channel_performance`
- `gold_top_products`
