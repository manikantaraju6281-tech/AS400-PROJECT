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

![Admin Login Page](/AS400-PROJECT/SCREENSHOTS/ADMIN/admin-login-page.png)


## 2. Admin Dashboard
The Admin Dashboard is the primary control panel for administrative operations. It allows the admin to manage employee records, update or delete employee details, display employee information, and manage holiday records. It also supports navigation through function keys for adding employees and holiday maintenance.

### Key Functions:
- Add Employee (F6)
- View Holidays (F7)
- Update Holidays (F8)
- Add Holiday (F10)
- Update/Delete/Display Employees

![Admin Dashboard](screenshots/ADMIN/admin-dashboard.png)

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

![Update Employee Data](screenshots/ADMIN/update-employee-data.png)

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

![Display Employee Data](screenshots/ADMIN/display-employee-data.png)

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

![Add Employee Data](screenshots/ADMIN/add-employee-data.png)

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

![View Holidays](screenshots/ADMIN/view-holidays.png)

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

![Update Holiday](screenshots/ADMIN/update-holiday.png)

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

![Holiday Management Dashboard](screenshots/ADMIN/holiday-management-dashboard.png)

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

![Manager Login Page](screenshots/MANAGER/manager-login-page.png)

## 2.2. Manager Dashboard

This screen represents the Manager Dashboard of the Employee Leave Management System on IBM i (AS400). It provides managers with role-based access to supervise employee activities, manage leave workflows, and monitor team operations.

### Key Features:
- View Employee Details
- Approve / Deny Leaves
- Approve / Deny Comp-Off
- Apply Leave / Comp-Off
- Track Leave & Comp-Off Status
- View Holidays
- Change Password
- Secure Sign Off

### Purpose:
The dashboard serves as the central control panel for managers to oversee team leave management and employee-related operations efficiently.

![Manager Dashboard](screenshots/MANAGER/manager-dashboard.png)

## 2.3. Employee Details (Manager View)

This screen allows managers to view employee records including Employee ID, Name, Team, and Designation.

### Key Features:
- View employee details
- Team and designation tracking
- Employee profile access
- Quick detail lookup

### Purpose:
Helps managers monitor team members and access employee information for supervision and decision-making.

![Employee Details](screenshots/MANAGER/manager-employee-details.png)

## 2.3.1. View Employee (Full Details)

This screen displays complete employee profile information for managers, including personal details, contact details, project details, and role information.

### Key Features:
- Full employee profile view
- Personal and professional details
- Contact information
- Project and manager mapping
- Role and status tracking

### Purpose:
Helps managers review detailed employee information for team supervision, verification, and operational management.

![View Employee Full Details](screenshots/MANAGER/view-employee-full-details.png)

## 2.4. Approve / Deny Leaves

This screen allows managers to review employee leave requests, approve or deny applications, and view leave descriptions before making decisions.

### Key Features:
- Approve leave requests
- Deny leave requests
- View leave description
- Track leave dates and total days
- Monitor leave status

### Purpose:
Helps managers efficiently control employee leave approvals while ensuring proper workforce planning.

![Approve / Deny Leaves](screenshots/MANAGER/approve-deny-leaves.png)

---

## 2.4.1. Leave Description

This screen provides complete leave request details including leave dates, leave type, total days, reason, and status for managerial review.

### Key Features:
- View detailed leave request
- Check leave reason
- Track leave balance
- Review leave type and status
- Decision support for approvals

### Purpose:
Enables managers to make informed approval or denial decisions based on complete leave request information.

![Leave Description](screenshots/MANAGER/leave-description.png)

## 2.5. Approve / Deny Comp-Offs

This screen allows managers to review employee comp-off requests, approve or deny submissions, and access detailed comp-off descriptions.

### Key Features:
- Approve comp-off requests
- Deny comp-off requests
- View comp-off description
- Track worked date and day type
- Monitor request status

### Purpose:
Helps managers validate extra workday compensation requests and manage comp-off approvals efficiently.

![Approve / Deny Comp-Offs](screenshots/MANAGER/approve-deny-comp-offs.png)

---

## 2.5.1. Comp-Off Description

This screen provides complete comp-off request details including worked date, day type, reason, project ID, and request status.

### Key Features:
- View detailed comp-off request
- Check work reason
- Track project assignment
- Review request status
- Decision support for approvals

### Purpose:
Enables managers to verify employee extra work claims before approving or denying comp-off requests.

![Comp-Off Description](screenshots/MANAGER/comp-off-description.png)

## 2.6. Apply Comp-Off

This screen allows employees to apply for comp-off by submitting worked date, number of extra days worked, reason, and project ID.

### Key Features:
- Apply for comp-off
- Enter worked date
- Select extra worked days
- Submit work reason
- Project ID mapping

### Purpose:
Enables employees to request compensatory off for additional workdays, supporting fair leave compensation and work-life balance.

![Apply Comp-Off](screenshots/MANAGER/apply-comp-off.png)

## 2.7. Apply Leaves

This screen allows employees or managers to apply for different leave types based on available leave balances.

### Key Features:
- Apply Casual Leave
- Apply Earned Leave
- Apply Comp-Off Leave
- View available leave balances
- Leave type selection

### Purpose:
Provides a centralized leave application interface for selecting and applying appropriate leave categories efficiently.

![Apply Leaves](screenshots/MANAGER/apply-leaves.png)

## 2.8. Leave Status

This screen enables employees to track the status of their applied leaves and manage pending requests.

### Key Features:
- View applied leave records
- Check From Date and To Date
- Track total leave days
- Status visibility (Approved / Denied / Pending)
- Leave type display
- Cancel applied leave option

### Purpose:
Helps employees monitor leave requests in real time and cancel requests when necessary.

## 2.9. Comp Off Status

This screen allows users to track the status of applied compensatory off requests and manage approved or pending entries.

### Key Features:
- View applied comp-off date
- Reason for comp-off request
- Adjusted unit / earned comp-off count
- Status tracking (Approved / Pending / Denied)
- Cancel applied comp-off request option

### Purpose:
Provides transparency for comp-off requests and helps employees or managers monitor approval progress efficiently.

## 2.10. View Holidays

This screen displays the official holiday calendar for employees and managers.

### Key Features:
- Holiday date list
- Day name display
- Holiday remarks / occasion details
- Supports organization-wide holiday planning
- Quick reference for leave and attendance scheduling

### Purpose:
Helps users stay informed about upcoming holidays and official non-working days for better leave planning.

## 2.11. Change Password

This screen allows users to securely update their account password.

### Key Features:
- User identification field
- Current password verification
- New password entry
- Password confirmation field
- Secure credential update process

### Purpose:
Enhances account security by enabling users to regularly update and protect login credentials.

## 3. Employee Dashboard

This is the main dashboard for employee users, providing access to self-service leave and comp-off functionalities.

### Key Features:
- Apply Comp-off
- Apply Leaves
- View Leave Status
- View Comp-off Status
- View Holidays
- Change Password
- Secure Sign Off

### Purpose:
Acts as the central navigation panel for employees to manage personal leave activities, track requests, and access essential system features.

## 3.1. Apply Comp Off

This screen allows employees to apply for compensatory off by submitting workday details and justification.

### Key Features:
- From Date and To Date selection
- From / To Day Type selection
- Reason for comp-off request
- Structured comp-off request form
- Refresh and cancel options

### Purpose:
Enables employees to request compensatory leave for extra working days through a formal approval workflow.

## 3.2. Leave Status (Employee View)

This screen allows employees to view and manage their applied leave requests.

### Key Features:
- Displays From Date and To Date
- Shows total number of leave days
- Status tracking (Approved / Denied / Pending)
- Leave type identification
- Option to cancel applied leave

### Purpose:
Provides employees with a clear overview of their leave history and current request status, enabling better leave management.

## 3.3. View Holidays (Employee View)

This screen allows employees to check the company holiday calendar.

### Key Features:
- Displays holiday dates
- Shows corresponding day names
- Includes holiday remarks/details
- Lists official holidays for planning leave in advance

### Purpose:
Helps employees stay informed about company holidays and plan work or leave schedules accordingly.

## 3.4. Apply Leave (Employee View)

This screen allows employees to submit leave requests.

### Key Features:
- From date selection
- From day type (Full/Half day)
- To date selection
- To day type (Full/Half day)
- Reason for leave entry
- Leave request submission

### Purpose:
Enables employees to request planned leave by specifying dates, leave duration, and reason for approval by management.

## 3.5. Change Password (Employee View)

This screen allows employees to securely update their login password.

### Key Features:
- User ID display
- Current password verification
- New password entry
- Confirm/verify new password
- Secure password update process

### Purpose:
Ensures account security by allowing employees to change passwords whenever needed while validating existing credentials.
## Author
Manikanta Raju
