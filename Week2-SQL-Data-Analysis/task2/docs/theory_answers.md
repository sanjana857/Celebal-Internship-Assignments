# SQL Assessment - Theory Answers

## Q4. Identify the Primary Key of each table. Why must a Primary Key be unique and NOT NULL?

### Primary Keys

| Table       | Primary Key |
| ----------- | ----------- |
| customers   | customer_id |
| products    | product_id  |
| orders      | order_id    |
| order_items | item_id     |

### Explanation

A Primary Key uniquely identifies each record in a table.

* It must be unique so that duplicate records cannot exist.
* It must be NOT NULL because every row requires a valid identifier.
* Primary Keys help maintain data integrity and support table relationships through Foreign Keys.

---

## Q5. What constraints are applied to the email column in the customers table?

### Constraints

```sql
email VARCHAR(100) UNIQUE NOT NULL
```

### Explanation

The email column contains:

* UNIQUE constraint
* NOT NULL constraint

If a duplicate email is inserted, the database rejects the operation and generates a UNIQUE constraint violation error.

---

## Q11. What does the idx_orders_date index do?

### Explanation

The idx_orders_date index improves the performance of queries that filter records using the order_date column.

Without an index, the database scans the entire table.

With the index, matching rows can be located much faster.

### Example Query

```sql
SELECT *
FROM orders
WHERE order_date = '2024-08-15';
```

---

## Q12. Would the following query use an index?

```sql
SELECT *
FROM customers
WHERE YEAR(join_date) = 2024;
```

### Answer

No.

Using the YEAR() function on an indexed column prevents efficient index utilization.

### Index-Friendly Query

```sql
SELECT *
FROM customers
WHERE join_date BETWEEN '2024-01-01'
AND '2024-12-31';
```

---

## Q22. Difference Between LEFT JOIN and RIGHT JOIN

### LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

Example:

```sql
SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
```

### RIGHT JOIN

Returns all rows from the right table and matching rows from the left table.

Example:

```sql
SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;
```

### FULL OUTER JOIN

Returns all matching and non-matching rows from both tables.

It is useful when records from both sides need to be analyzed.

---

## Q23. Identify all Foreign Key relationships in the schema.

### Foreign Keys

1. orders.customer_id → customers.customer_id

2. order_items.order_id → orders.order_id

3. order_items.product_id → products.product_id

### What happens if customer_id = 999 is inserted?

The database rejects the insert operation because customer_id 999 does not exist in the customers table.

This prevents orphan records and maintains referential integrity.

---

## Q26. Explain ACID Properties

### Atomicity

A transaction is treated as a single unit. Either all operations succeed or none are applied.

### Consistency

A transaction moves the database from one valid state to another valid state while enforcing all constraints.

### Isolation

Multiple transactions can execute simultaneously without interfering with each other.

### Durability

Once a transaction is committed, changes remain permanently stored even if a system failure occurs.

### Real-World Example

Consider a bank transfer of ₹1000 from Account A to Account B.

* Atomicity ensures both debit and credit occur together.
* Consistency ensures total money remains unchanged.
* Isolation prevents concurrent transactions from causing conflicts.
* Durability ensures the transfer remains saved after COMMIT.
