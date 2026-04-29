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

## 1. Admin Login Page

This screen represents the Admin Login Page of the Employee Leave Management System developed on IBM i (AS400). It serves as the primary authentication gateway for administrative users, ensuring secure access to the system’s core management functionalities.

The login page validates administrator credentials before granting access to the Admin Dashboard, where employee management, holiday administration, and system governance operations are performed.

### Purpose:
The Admin Login module is designed to authenticate authorized administrators and protect sensitive organizational data through credential verification.

### Features:
- Secure username authentication
- Password-based access control
- Role verification for Admin access
- Protected entry point to Admin Dashboard
- Unauthorized access prevention
- System-level administrative security

### Login Fields:
- Username
- Password

### Sample Credentials:
- Username: MANI0011
- Password: Secured / Hidden

### Function Keys:
- F3 = Exit
- F5 = Refresh
- F12 = Cancel

### Security Benefits:
- Restricted administrative access
- Role-based dashboard authorization
- Credential validation
- Data protection
- Prevents unauthorized system entry

### Authentication Flow:
Admin Login → Credential Verification → Role Validation → Admin Dashboard

### Business Value:
- Ensures only authorized administrators can manage employees
- Protects employee records and leave policies
- Supports enterprise security governance
- Maintains system integrity

### Key Benefits:
- Centralized admin authentication
- Secure entry mechanism
- Controlled administrative privileges
- Improved organizational security

### Administrative Access Includes:
- Employee Add / Update / Delete
- Holiday Management
- Role Assignment
- System Monitoring
- Leave Governance

This login screen forms the first layer of security for the Admin module and acts as the foundation for controlled system administration.

![Admin Login Page](screenshots/admin-login-page.png)


## 2. Admin Dashboard
The Admin Dashboard is the primary control panel for administrative operations. It allows the admin to manage employee records, update or delete employee details, display employee information, and manage holiday records. It also supports navigation through function keys for adding employees and holiday maintenance.

### Key Functions:
- Add Employee (F6)
- View Holidays (F7)
- Update Holidays (F8)
- Add Holiday (F10)
- Update/Delete/Display Employees

![Admin Dashboard](screenshots/admin-dashboard.png)

## 3. Update Employee Data

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

## 4. Display Employee Data

This screen represents the Display Employee Data module of the Employee Leave Management System developed on IBM i (AS400). It provides a comprehensive employee profile view, allowing administrators and managers to access complete employee details in a structured read-only format.

The screen centralizes employee master information, including personal details, professional details, contact information, project assignment, and role classification. It is primarily used for employee verification, record review, and administrative reference.

### Features:
- View complete employee profile
- Employee ID-based record retrieval
- Personal information display
- Contact details display
- Team and project assignment visibility
- Manager association tracking
- Employment role and status display
- Read-only secure display mode

### Employee Details Displayed:
- Employee ID
- Name
- Gender
- Date of Birth (DOB)
- Date of Joining (DOJ)
- Address
- Country
- Pin Code
- City
- Mobile Number
- Alternate Number
- Project ID
- Manager ID
- Designation
- Office Email
- Personal Email
- Employee Status
- Role

### Sample Employee Record:
- Employee ID: 110
- Name: MANIKANTA
- City: VIJAYAWADA
- Team: DEV01
- Project ID: PRJ001
- Designation: RPG Developer
- Role: Employee

### Function Keys:
- F3 = Exit
- F12 = Cancel

### Purpose:
This module ensures that administrators and managers can verify employee information accurately without modifying data. It improves transparency, data validation, and employee profile tracking while supporting enterprise HR workflows.

### Business Value:
- Employee profile auditing
- Administrative verification
- Project-team mapping
- Role validation
- Employee master data review

![Display Employee Data](screenshots/display-employee-data.png)

## 5. Add Employee Data

This screen represents the Add Employee Data module of the Employee Leave Management System developed on IBM i (AS400). It is designed for administrators to register new employees into the system by capturing essential employee information and creating a new employee master record.

The module supports structured employee onboarding by allowing the admin to assign a unique Employee ID, enter employee details, define location, and classify the employee role within the organization.

### Features:
- Add new employee records
- Auto-generated Employee ID management
- Employee profile creation
- City/location assignment
- Role classification (Admin / Manager / Employee)
- Master data insertion into Employee PF
- Structured form-based employee onboarding

### Fields Available:
- Employee ID
- Employee Name
- City
- Role

### Sample Employee Record:
- Employee ID: 111
- Name: ARUN
- City: HYD (Hyderabad)
- Role: Employee

### Function Keys:
- F3 = Exit
- F5 = Refresh
- F12 = Cancel

### Purpose:
This module is used to onboard new employees into the Employee Leave Management System while maintaining a structured and secure employee master database.

### Business Value:
- Employee onboarding automation
- HR master data creation
- Role-based system integration
- Workforce database expansion
- Administrative efficiency

### Key Benefits:
- Reduces manual employee registration effort
- Ensures structured employee data entry
- Supports future leave, payroll, and team assignment processes
- Simplifies organizational employee management

![Add Employee Data](screenshots/add-employee-data.png)

## 6. View Holidays

This screen represents the View Holidays module of the Employee Leave Management System developed on IBM i (AS400). It enables administrators and employees to view official company holidays, scheduled leave dates, and holiday remarks in a structured format.

The module provides centralized holiday visibility to support workforce planning, leave scheduling, and operational transparency across the organization.

### Features:
- View holiday calendar details
- Display official holiday date
- Day identification (weekday mapping)
- Holiday remark / occasion display
- Centralized holiday tracking
- Admin holiday reference
- Employee leave planning support

### Fields Available:
- Date
- Day
- Remarks

### Sample Holiday Record:
- Date: 02/04/2026
- Day: Thursday
- Remarks: Leave

### Function Keys:
- F3 = Exit
- F5 = Refresh
- F12 = Refresh

### Purpose:
This module is designed to maintain transparency regarding organizational holidays and leave schedules, helping employees and management plan work effectively.

### Business Value:
- Holiday schedule awareness
- Leave planning assistance
- Company calendar management
- Workforce scheduling support
- Administrative holiday monitoring

### Key Benefits:
- Reduces holiday confusion
- Improves leave coordination
- Supports attendance planning
- Simplifies company-wide holiday communication
- Enhances employee scheduling efficiency

### Use Case:
Employees and administrators can use this screen to verify official holidays before applying for leave or scheduling work activities.

![View Holidays](screenshots/view-holidays.png)

## 7. Update Holiday

This screen represents the Update Holiday module of the Employee Leave Management System developed on IBM i (AS400). It allows administrators to modify existing holiday records by updating holiday dates, day information, and holiday remarks.

The module is designed to maintain an accurate organizational holiday calendar by enabling holiday schedule corrections, policy changes, and event updates.

### Features:
- Update existing holiday records
- Modify holiday date
- Update day information
- Change holiday remarks / occasion details
- Holiday calendar correction
- Administrative holiday maintenance
- Centralized company holiday control

### Fields Available:
- Date
- Day
- Remarks

### Purpose:
This module ensures that administrators can maintain and revise holiday schedules as organizational policies or calendar requirements change.

### Function Keys:
- F3 = Exit
- F5 = Refresh
- F12 = Cancel

### Business Value:
- Holiday policy maintenance
- Organizational calendar accuracy
- Leave planning consistency
- Workforce schedule synchronization
- HR holiday administration

### Key Benefits:
- Keeps holiday records updated
- Supports policy modifications
- Reduces scheduling conflicts
- Improves leave planning accuracy
- Enhances administrative flexibility

### Use Case:
When a holiday is rescheduled, corrected, or renamed, administrators can use this screen to update the holiday database without deleting and recreating records.

### Administrative Importance:
This module is essential for ensuring accurate holiday communication across Admin, Manager, and Employee modules.

![Update Holiday](screenshots/update-holiday.png)

## 8. Holiday Management Dashboard

This screen represents the Holiday Management Dashboard of the Employee Leave Management System developed on IBM i (AS400). It serves as a centralized holiday administration interface where administrators can view, verify, and manage organizational holiday records.

The dashboard provides structured access to holiday-related data including date, day, and holiday remarks, ensuring that the company holiday calendar remains transparent and manageable.

### Features:
- Centralized holiday record management
- View official company holidays
- Track holiday dates and weekdays
- Display holiday remarks / occasion descriptions
- Holiday verification interface
- Administrative holiday monitoring
- Calendar transparency for leave planning

### Fields Available:
- Date
- Day
- Remarks

### Function Keys:
- F3 = Exit
- F5 = Refresh
- F12 = Refresh

### Purpose:
This module helps administrators maintain visibility into the holiday calendar and ensures that all holiday records are accessible for workforce planning and leave coordination.

### Business Value:
- Company holiday transparency
- Workforce planning support
- Leave scheduling assistance
- Administrative holiday governance
- Improved employee communication

### Key Benefits:
- Centralized holiday calendar
- Easy holiday verification
- Supports leave management decisions
- Enhances planning accuracy
- Reduces scheduling conflicts

### Administrative Importance:
The Holiday Management Dashboard acts as a core support module for:
- Leave Management
- Attendance Planning
- Employee Scheduling
- Holiday Policy Administration

### Use Case:
Administrators can review holiday schedules before adding, updating, or communicating holiday-related changes to employees and managers.

![Holiday Management Dashboard](screenshots/holiday-management-dashboard.png)

## 2.1. Manager Login Page

This screen represents the Manager Login Page of the Employee Leave Management System developed on IBM i (AS400). It serves as the secure authentication gateway for managerial users, allowing authorized managers to access team management, leave approvals, and employee oversight functionalities.

The Manager Login module validates Manager ID and password credentials before granting access to the Manager Dashboard, ensuring that only authorized managerial personnel can supervise employee leave workflows and team operations.

### Purpose:
The Manager Login module is designed to provide secure role-based access for managers, enabling controlled entry into team supervision and leave governance functionalities.

### Features:
- Secure Manager ID authentication
- Password-based managerial access
- Role verification for Manager dashboard
- Restricted access to team operations
- Leave approval system entry
- Unauthorized access prevention

### Login Fields:
- Manager ID
- Password

### Sample Credentials:
- Manager ID: MANI0123
- Password: Secured / Hidden

### Function Keys:
- F3 = Exit
- F5 = Refresh
- F12 = Cancel

### Security Benefits:
- Restricted managerial access
- Team-level authorization
- Role-based operational security
- Credential verification
- Protects team and leave governance data

### Authentication Flow:
Manager Login → Credential Verification → Role Validation → Manager Dashboard

### Manager Responsibilities After Login:
- View Team Members
- Approve / Reject Leave Requests
- Approve / Reject Comp-Off Requests
- Monitor Team Leave Balances
- Employee Team Oversight
- Workforce Scheduling

### Business Value:
- Secure managerial supervision
- Controlled leave approval workflows
- Team governance
- Hierarchical operational control
- Enhanced workforce coordination

### Key Benefits:
- Protects managerial privileges
- Supports team-based operations
- Improves leave approval governance
- Strengthens enterprise security
- Enhances managerial accountability

This login page acts as the primary security and access control layer for the Manager module, ensuring proper team governance within the Employee Leave Management System.

![Manager Login Page](screenshots/manager-login-page.png)


## Author
Manikanta Raju
