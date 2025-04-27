# Esporte-Aula

**Esporte-Aula** is a Java-based system designed to manage the registration of students and teachers, allowing them to schedule in-person classes. It uses Hibernate to communicate with a MariaDB database and provides features like adding, editing, and deleting student and teacher records. The administrative panel allows for managing these functionalities. The system is designed with CSS to ensure responsiveness for mobile devices.

## What the Project Does

The **Esporte-Aula** project is a web application created to manage sports classes. It allows:
- **Student and Teacher Registration**: Students and teachers can register their details.
- **Class Scheduling**: Teachers and students can schedule and manage in-person classes.
- **Admin Management**: The admin panel allows for editing and deleting records for students, teachers, and class schedules.
- **Responsive Design**: The system is designed to work seamlessly on mobile devices, providing a smooth user experience.

## How to Run the Project

### Prerequisites

Before running the project, you need to make sure you have the following software installed:

- **XAMPP**: A software package that includes Apache, MySQL (or MariaDB), and PHP, which you will use to run the MariaDB database.
- **JDK (Java Development Kit)**: Ensure you have the JDK installed, as it is required to compile and run the Java code.
- **Eclipse IDE**: Integrated development environment (IDE) for Java.

### Steps to Run the Project

1. **Download and Set Up XAMPP**
   
   - Go to the [official XAMPP website](https://www.apachefriends.org/index.html) and download the version suitable for your operating system.
   - After downloading, install and start XAMPP.
   - Open the XAMPP Control Panel and start Apache and MySQL/MariaDB.

2. **Set Up MariaDB Database in XAMPP**
   
   - Open the XAMPP control panel and click on "Admin" next to MySQL to open phpMyAdmin.
   - Create a new database in phpMyAdmin and update the connection settings in the `hibernate.cfg.xml` file of your project with the correct database credentials.

3. **Configure Apache Tomcat in Eclipse**
   
   - Open Eclipse IDE.
   - In Eclipse, go to `Window > Preferences`.
   - Under `Server > Runtime Environments`, click "Add External Server".
   - Select **Apache Tomcat 10.5** and navigate to the directory where you extracted Apache Tomcat.
   - After configuring, click "OK" to save the settings.

4. **Import the Project into Eclipse**
   
   - Download the project source code or clone the GitHub repository:
     ```bash
     git clone https://github.com/Gbmonte9/Esporte-Aula.git
     ```
   - In Eclipse, go to `File > Import > Existing Projects into Workspace`.
   - Select the `Esporte-Aula` project directory you downloaded or cloned.
   - Click "Finish" to import the project into Eclipse.

5. **Configure the Project in Eclipse**
   
   - After the import, you need to configure your Java project to run with Apache Tomcat:
     - Right-click on your project in Eclipse, go to `Properties`.
     - Then select `Targeted Runtimes` and check **Apache Tomcat 10.5**.
     - Save the changes.

6. **Run the Project on Tomcat**
   
   - In Eclipse, go to `Servers` (usually at the bottom of the IDE).
   - Right-click on the Apache Tomcat 10.5 server and select "Add and Remove".
   - Select your project and add it to Tomcat.
   - Now, right-click on the Apache Tomcat server and select "Start" to run the server.
   - Eclipse will start Tomcat, and you can access the application in your browser at `http://localhost:8080`.

7. **Access the Application**
   
   - Open your browser and type:
     ```
     http://localhost:8080
     ```
   - This should open the **Esporte-Aula** system interface.

### Contribution

Feel free to contribute to the project! Just fork it and submit a pull request. If you have any questions or find any issues, don't hesitate to open an issue on GitHub.

- [My LinkedIn](https://www.linkedin.com/in/gabriel-mon/](https://www.linkedin.com/in/gabriel-rodrigues-mt/)
- [Watch the project video](YOUR_VIDEO_LINK_HERE)

