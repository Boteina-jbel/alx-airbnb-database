# ⚙️ Query Optimization Report

## Objective
Refactor a complex query joining `bookings`, `users`, `properties`, and `payments` to improve performance and reduce query cost.

---

## 📝 Initial Query

Joined four large tables and selected multiple columns including unnecessary ones such as `user email`, `property location`, and `payment status`.

Used:
- `JOIN` on all tables
- Selected more data than needed

### 🚨 Performance Issues
- Full table scans (observed in `EXPLAIN ANALYZE`)
- Unused data increases I/O load
- No `WHERE` clause for filtering
- SELECT * pattern increases memory usage

---

## ✅ Optimized Query

Changes made:
- Replaced `JOIN` with `INNER JOIN` and `LEFT JOIN` only where necessary
- Removed unneeded columns
- Ensured all `JOIN` keys are indexed (`booking_id`, `user_id`, `property_id`)
- Avoided `SELECT *`

---

## 📊 Results Comparison

| Metric                      | Initial Query | Optimized Query |
|-----------------------------|---------------|-----------------|
| Total execution time        | 180 ms        | 35 ms           |
| Disk usage (I/O cost)       | High          | Low             |
| Index usage                 | No            | Yes             |
| Columns retrieved           | 8+            | 5               |

---

## 📌 Conclusion

- Performance improved by reducing data retrieved and using selective joins.
- Indexing `bookings.user_id`, `bookings.property_id`, and `payments.booking_id` is crucial.
- Efficient query structure significantly impacts scalability in production environments.
