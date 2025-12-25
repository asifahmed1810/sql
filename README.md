# Vehicle Rental System – Database Design & SQL Queries

##  Project Overview
The Vehicle Rental System is a database-driven application designed to manage users, vehicles, and rental bookings efficiently.  
This project focuses on **database design, relationships, and SQL queries** to handle real-world rental scenarios.

The system supports:
- User management with roles (Admin / Customer)
- Vehicle management with availability tracking
- Booking management with rental duration and cost calculation

---

##  Database Design
The database consists of **three core tables**:

### 1. Users
Stores all system users.

**Attributes:**
- user_id (Primary Key)
- name
- email (Unique)
- password
- phone
- role (Admin / Customer)

---

### 2. Vehicles
Stores rental vehicle information.

**Attributes:**
- vehicle_id (Primary Key)
- vehicle_name
- vehicle_type (car / bike / truck)
- model
- registration_number (Unique)
- rental_price_per_day
- availability_status (available / rented / maintenance)

---

### 3. Bookings
Stores booking and rental details.

**Attributes:**
- booking_id (Primary Key)
- user_id (Foreign Key → Users)
- vehicle_id (Foreign Key → Vehicles)
- start_date
- end_date
- booking_status (pending / confirmed / completed / cancelled)
- total_cost

---

##  Relationships
- **One-to-Many:** One user can make multiple bookings
- **One-to-Many:** One vehicle can have multiple bookings
- Each booking connects **exactly one user and one vehicle**

Foreign keys ensure **data integrity and consistency**.

---

##  SQL Queries
All required SQL queries are written in the `queries.sql` file.  
The queries demonstrate usage of:
- INNER JOIN
- NOT EXISTS
- WHERE clause
- GROUP BY and HAVING

Each query solves a real-world database problem based on the system requirements.

---

## ✅ Conclusion
This project demonstrates a complete relational database design with proper relationships, and practical SQL queries.  
It reflects real-world vehicle rental operations and follows best database design practices.
