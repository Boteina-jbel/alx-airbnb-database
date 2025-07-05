# 🛠️ Database Performance Monitoring and Refinement

## 🎯 Objective
Continuously monitor and optimize the performance of critical SQL queries in the Airbnb Clone database by analyzing execution plans and refining schema/indexes.

---

## 📊 Tools Used
- `EXPLAIN ANALYZE` (PostgreSQL)
- Used to view query plans, costs, row estimates, and actual performance.

---

## 🔍 Monitored Query

### 📌 Query: Retrieve Bookings with Property and User Info

```sql
EXPLAIN ANALYZE
SELECT 
    b.id, b.start_date, b.end_date,
    u.name, p.title
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
WHERE 
    b.start_date BETWEEN '2024-06-01' AND '2024-06-30';
