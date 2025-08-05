# dbt-BigQuery Analytics Project

This repository contains a dbt (Data Build Tool) project designed for analytics engineering and transformation on Google BigQuery. It provides a modular, version-controlled workflow for transforming raw data in BigQuery into analytics-ready datasets, while enabling testing, documentation, and data quality assurance.

## Project Overview

This dbt project allows you to:

- Transform raw data in your Google BigQuery warehouse using modular SQL models.
- Test your data transformations for quality and consistency.
- Document your analytics pipeline and data lineage.
- Manage version-controlled analytics workflows as code.

## Go-To Folders & Their Roles

- **analyses/**  
  SQL analysis files for ad hoc or advanced analytical queries. These are not materialized as tables/views, but help you perform exploratory or in-depth analysis using BigQuery SQL.

- **macros/**  
  Contains reusable SQL snippets (macros) that you can use across your dbt models and tests. Perfect for parameterized SQL logic and DRY (Don't Repeat Yourself) code in BigQuery.

- **models/example/**  
  The core of your dbt project. Place your transformation models here. Each SQL file typically represents a table or view in BigQuery, built by transforming raw source data into analytics-ready outputs.

- **seeds/**  
  Store CSV files that dbt will upload as BigQuery tables. Useful for static reference data, mapping tables, or simple lookup tables that are version-controlled with your project.

- **snapshots/**  
  Define snapshot logic to track changes in your source data over time. This leverages BigQuery’s capabilities to manage slowly changing dimensions (SCDs).

- **tests/**  
  Custom data tests to validate your BigQuery models, e.g., check for nulls, uniqueness, or referential integrity. Ensures your data is reliable and trustworthy.

- **dbt_project.yml**  
  The main configuration file for your dbt project, specifying how dbt interacts with your BigQuery environment, including model/materialization settings, folder paths, and project metadata.

- **README.md**  
  This documentation file! Use it to onboard new team members or collaborators, and as a reference for understanding the project structure and workflow.

## Getting Started with dbt & BigQuery

1. **Install dbt**  
   Follow instructions at [dbt installation docs](https://docs.getdbt.com/docs/installation).

2. **Set up your BigQuery profile**  
   Configure your connection to BigQuery in the `profiles.yml` file as described in the [dbt BigQuery documentation](https://docs.getdbt.com/docs/core/connect-data-platform/bigquery-setup).

3. **Initialize and Run the Project**
   ```bash
   dbt run
   dbt test
   ```

4. **Explore Results**  
   Query your transformed datasets directly in BigQuery or connect your BI tool for analytics.


