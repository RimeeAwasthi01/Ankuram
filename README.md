# Ankuram - Student Management System
 
**Ankuram** is a Student Management System built with **JSP, Java Servlets and MySQL**. It lets schools and colleges register students, log in, and view, update and delete student records. It was made as a college project for showing basic crud operations.
 
## Live Demo
 
**https://rimeeawasthi01.github.io/Ankuram/**
 
> This is a **static preview** hosted on GitHub Pages, so you can click through every page and see the interface. Nothing is saved, and login, register, update and delete are simulated with sample data. The full version runs on a Java server (Apache Tomcat) with a MySQL database, as described below.
 
## Features
 
- Student registration (name, email, mobile number, password)
- Login page
- Student details table showing all registered students
- Update a student's details
- Delete a student record
- About page and a home page with navigation
## Tech Stack
 
| Layer | Technology |
|-------|------------|
| Frontend | HTML, CSS, Bootstrap 3 and 4, Font Awesome |
| Backend | JSP, Java Servlets (Jakarta Servlet API) |
| Database | MySQL (via JDBC) |
| Server | Apache Tomcat 10 or later |
 
## Project Structure
 
```
Ankuram/
├── java/                    # Servlets
│   ├── Register.java        # Add a new student
│   ├── Login.java           # Check login details
│   ├── UpdateServlet.java   # Update a student record
│   ├── DeleteServlet.java   # Delete a student record
│   └── Student_info.java
├── webapp/                  # JSP pages
│   ├── Home_Page.jsp
│   ├── Login_Page.jsp
│   ├── Register_Page.jsp
│   ├── Student_info.jsp     # Table of all students
│   ├── Update_Page.jsp
│   └── About_Us.jsp
├── *.html                   # Static demo pages used by GitHub Pages
└── README.md
```
 
## Database
 
The project uses a MySQL database named `mca` with a table `std_reg`:
 
| Column | Description |
|--------|-------------|
| Id | Auto-increment primary key |
| Name | Student name |
| Email | Student email |
| Password | Login password |
| Mobile_number | Mobile number |
 
Example setup:
 
```sql
CREATE DATABASE mca;
USE mca;
CREATE TABLE std_reg (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100),
  Password VARCHAR(100),
  Mobile_number VARCHAR(20)
);
```
 
> Column order matters: the login servlet reads the name from the first column and the password from the fourth, so check that your table matches the order used in the code.
 
## Run the Full Project Locally
 
### Requirements
 
- JDK 11 or later
- Apache Tomcat 10 or later (the code uses the `jakarta.servlet` package)
- MySQL Server
- MySQL Connector/J (JDBC driver)
- An IDE such as Eclipse or IntelliJ
### Steps
 
1. **Clone the repository**
```bash
git clone https://github.com/RimeeAwasthi01/Ankuram.git
```
2. **Create the database and table** as shown above.
3. **Set your own database password.** Replace `your_db_password` in the JSP and servlet files with your MySQL password. Do not commit real passwords to GitHub.
4. **Create a Dynamic Web Project** in your IDE, then copy the JSP files from `webapp/` into the web content folder and the servlets from `java/` into `src`.
5. **Map the servlets** in `web.xml` (or add `@WebServlet` annotations): `Login`, `Register`, `UpdateServlet` and `DeleteServlet`.
6. **Add the MySQL Connector/J JAR** to `WEB-INF/lib`.
7. **Run on Tomcat** and open `http://localhost:8080/<project-name>/Home_Page.jsp`.

## Screenshots

<img width="1917" height="815" alt="Screenshot 2026-11-25 113818" src="https://github.com/user-attachments/assets/d64a7ca9-bbc5-474e-a5e2-753bf7ad13f4" />
<img width="1917" height="811" alt="Screenshot 2026-11-25 113840" src="https://github.com/user-attachments/assets/366ac41d-8f40-4ac6-8e35-74aec2624d38" />
<img width="1915" height="790" alt="Screenshot 2026-11-25 113738" src="https://github.com/user-attachments/assets/d3c816b5-afd5-4e05-b78a-3073665b25a1" />
<img width="1917" height="815" alt="Screenshot 2026-11-25 113750" src="https://github.com/user-attachments/assets/a603ba1b-1a38-457b-8336-2692c9a4a269" />


## Team
 
| Name | GitHub |
|------|--------|
| Rimee Awasthi | [@RimeeAwasthi01](https://github.com/RimeeAwasthi01) |
| Yashit Tripathi | [@YashitTripathi](https://github.com/YashitTripathi) |
 
## Note
 
This project was built as a college project.
