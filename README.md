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

## Author
Manikanta Raju
