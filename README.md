# AS400-PROJECT
AS400 project built using RPGLE, DDS, and CL on IBM i featuring menu-driven modules, display files, and database operations.
# Employee Leave Management System (AS400 / IBM i)

## Overview
Employee Leave Management System is an IBM i (AS400) application developed using RPGLE, DDS, CL, and DB2 to automate employee leave, comp-off, holiday, and approval workflows.

The system supports three user roles:
- Admin
- Manager
- Employee

It provides secure login, leave balance tracking, comp-off requests, holiday management, password control, and role-based dashboards.

## Technologies Used
- RPGLE (ILE RPG)
- DDS / DSPF / Subfiles
- CL / CLLE
- DB2 (IBM i)
- IBM i / AS400

## Key Features
### Admin Module
- Add / Update / Delete Employees
- Holiday Management
- Employee Dashboard
- Role & Team Management

### Manager Module
- Approve / Deny Leaves
- Approve / Deny Comp-Offs
- Employee Team Management
- Leave Status Monitoring

### Employee Module
- Apply Leave
- Apply Comp-Off
- Check Leave Balance
- Holiday View
- Change Password

## Database Design
Main Files:
- EMPMASTER
- LEAVES
- COMPOFF
- LOGIN
- LEAVEBAL
- HOLIDAYS

## Project Structure
LF/         → Logical Files  
PF/         → Physical Files  
RPGLE/      → RPGLE Programs  
SCREENS/    → Display Files  
SUBFILES/   → Subfile Screens  
docs/       → Project Documentation  

## Documentation
Detailed case study, ER diagram, PF structures, flowcharts, and screen designs:
- docs/Employee_Leave_Management_System.pdf

## Highlights
- Role-based architecture
- ER Diagram
- Flow Chart
- Validation-heavy design
- Payroll-supportive leave tracking

# System Screenshots

## 1. Admin Dashboard
The Admin Dashboard is the primary control panel for administrative operations. It allows the admin to manage employee records, update or delete employee details, display employee information, and manage holiday records. It also supports navigation through function keys for adding employees and holiday maintenance.

### Key Functions:
- Add Employee (F6)
- View Holidays (F7)
- Update Holidays (F8)
- Add Holiday (F10)
- Update/Delete/Display Employees

![Admin Dashboard](screenshots/admin-dashboard.png)

## 2. Update Employee Data

This screen represents the Update Employee Data module of the Employee Leave Management System on IBM i (AS400). It allows administrators to modify and maintain employee information such as Employee ID, Name, City, and Role.

The screen is designed for quick employee data maintenance with a structured form-based interface, ensuring that employee records remain accurate and up to date.

### Features:
- Update employee master details
- Modify employee city/location
- Update employee role classification
- Maintain employee records securely
- Form-based data editing with validation support

### Fields Available:
- Employee ID
- Employee Name
- City
- Role

### Function Keys:
- F3 = Exit
- F5 = Refresh
- F12 = Cancel

### Purpose:
This module helps the admin manage employee profile changes efficiently while maintaining data consistency in the Employee Master Physical File (EMPMASTER PF).

![Update Employee Data](screenshots/update-employee-data.png)



## Author
Manikanta Raju
