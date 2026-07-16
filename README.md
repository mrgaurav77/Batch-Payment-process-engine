# Batch Payment Processing System

A Java Web Application developed using **JSP, Servlets, JDBC, MySQL, Maven, and Apache Tomcat** to automate batch payment processing for students. The system allows administrators to add payments, process them in batches, view payment records, and generate reports.

---

# Features

- Secure Login
- Dashboard
- Add New Payment
- View All Payments
- Batch Payment Processing
- Payment Status Tracking
- Batch ID Generation
- Reports
- MySQL Database Integration
- Maven Project Structure

---

# Technologies Used

| Technology | Purpose |
|------------|---------|
| Java | Backend Development |
| JSP | Frontend Pages |
| Servlets | Request Processing |
| JDBC | Database Connectivity |
| MySQL | Database |
| Maven | Dependency Management |
| Apache Tomcat 9 | Web Server |
| HTML/CSS | User Interface |

---


---

# Database

Database Name

```
batchpayment
```

Table

```
payment
```

SQL

```sql
CREATE TABLE payment(
id INT PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(100),
account_number VARCHAR(20),
ifsc VARCHAR(20),
amount DOUBLE,
status VARCHAR(20),
batch_id VARCHAR(100)
);
```

---
# How to Run the Project

## Step 1

Clone the repository

```bash
git clone https://github.com/mrgaurav/Batch-Payment-Processing-engine.git
```

or download the ZIP.

---

## Step 2

Open the project in

- Eclipse
- IntelliJ IDEA
- VS Code

---

## Step 3

Import as Maven Project.

---

## Step 4

Configure MySQL Database.

Create database

```sql
CREATE DATABASE batchpayment;
```

Import the payment table.

---

## Step 5

Update database credentials inside

```
DBConnection.java
```

Example

```java
String url = "jdbc:mysql://localhost:3306/batchpayment";
String username = "root";
String password = "";
```

---

## Step 6

Build the project

```bash
mvn clean package
```

After successful build

```
BUILD SUCCESS
```

---

## Step 7

Copy the generated WAR file from

```
target/
```

into

```
apache-tomcat/webapps/
```

---

## Step 8

Start Apache Tomcat.

---

## Step 9

Open your browser

```
http://localhost:8080/BatchPaymentProcessingSystem/
```

# Author

**Gaurav Kolhe**

Master Of Computer Application (MET Institute Of Management)

---

# License

This project is developed for educational and academic purposes.
