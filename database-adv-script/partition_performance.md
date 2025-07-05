# 📊 Booking Table Partitioning Performance Report

## Objective
Partition the `bookings` table by `start_date` to optimize performance on date-based queries.

---

## 📦 Implementation Summary

- A new table `bookings_partitioned` was created with `RANGE` partitioning on the `start_date` column.
- Partitions were created for years 2023, 2024, and 2025.
- Queries targeting a specific date range (e.g., bookings in June 2024) were run using `EXPLAIN ANALYZE`.

---

## ⚙️ Query Tested

```sql
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
