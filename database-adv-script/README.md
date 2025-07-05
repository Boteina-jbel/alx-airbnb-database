# 🧩 Airbnb Clone – Advanced SQL Queries

## 📄 Files in this directory

- `joins_queries.sql` – Contains JOIN queries
- `subqueries.sql` – Contains subqueries

---

## 🔗 JOIN Queries (joins_queries.sql)

### ✅ INNER JOIN  
Retrieves all bookings and the respective users who made them.

### ✅ LEFT JOIN  
Retrieves all properties and their reviews, including those without any reviews.

### ✅ FULL OUTER JOIN  
Retrieves all users and all bookings, even when there is no direct relationship between them.

🔗 References:  
- [SQL INNER JOIN – W3Schools](https://www.w3schools.com/sql/sql_join_inner.asp)  
- [SQL LEFT JOIN – W3Schools](https://www.w3schools.com/sql/sql_join_left.asp)  
- [SQL FULL OUTER JOIN – W3Schools](https://www.w3schools.com/sql/sql_join_full.asp)

---

## 🧠 Subqueries (subqueries.sql)

### ✅ Non-Correlated Subquery  
Finds all properties where the average rating is greater than 4.0.

### ✅ Correlated Subquery  
Finds users who have made more than 3 bookings.

🔗 References:  
- [SQL Subqueries – W3Schools](https://www.w3schools.com/sql/sql_subqueries.asp)  
- [Correlated Subqueries – GeeksforGeeks](https://www.geeksforgeeks.org/sql-correlated-subqueries/)

---

## 📈 Aggregations & Window Functions (aggregations_and_window_functions.sql)

### ✅ Total Bookings per User  
Uses `COUNT` and `GROUP BY` to find how many bookings each user has made.

### ✅ Property Booking Rank  
Uses the `RANK()` window function to rank properties by number of bookings.

🔗 References:  
- [SQL GROUP BY – W3Schools](https://www.w3schools.com/sql/sql_groupby.asp)  
- [SQL Window Functions – Mode](https://mode.com/sql-tutorial/sql-window-functions/)  
- [SQL RANK Function – W3Schools](https://www.w3schools.com/sql/func_sqlserver_rank.asp)

