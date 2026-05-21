# README.md — 02-users.csv

## Overview
This CSV file contains all user account data used in the Atlanta Hawks IAM Lab environment built in Active Directory.

The file serves as the identity source for automated user provisioning and simulates how enterprise HR systems provide employee data to IAM systems.

This CSV is used to:
- Create user accounts automatically
- Assign users to departments
- Define job roles
- Support RBAC implementation
- Simulate onboarding workflows
- Prepare for hybrid identity synchronization with Microsoft Entra ID

--------------------------------------------------

FILE NAME
02-users.csv

--------------------------------------------------

PURPOSE

The purpose of this file is to:
- Simulate a real-world HR identity feed
- Automate Active Directory user creation
- Standardize account naming conventions
- Support IAM lifecycle management
- Enable group-based access control
- Prepare identities for future cloud synchronization

--------------------------------------------------

CSV STRUCTURE

Column Name: FirstName
Description: User's first name

Column Name: LastName
Description: User's last name

Column Name: Username
Description: Logon username for the account

Column Name: Department
Description: Department assignment

Column Name: Title
Description: User job title

Column Name: OU
Description: Organizational Unit where the user account will be created

Column Name: Password
Description: Temporary onboarding password

Column Name: Email
Description: Company email address

--------------------------------------------------

USER ACCOUNT DESIGN

The accounts in this CSV simulate:
- NBA players
- Coaches
- IT staff
- Helpdesk technicians
- Finance personnel
- Marketing employees
- Executives
- Medical staff
- Administrative users

The structure follows enterprise identity management standards used in real corporate environments.

--------------------------------------------------

EXAMPLE USE CASES

This CSV supports:
- Automated onboarding
- Bulk user creation
- IAM automation
- RBAC assignments
- Access reviews
- Lifecycle management
- Offboarding simulations
- Password policy testing
- Group membership automation

--------------------------------------------------

EXAMPLE AUTOMATION WORKFLOW

This CSV is typically used with:
- 03-create-users.ps1
- 09-run-full-lab-build.ps1

The PowerShell scripts will:
1. Read the CSV
2. Create Active Directory user accounts
3. Apply naming conventions
4. Set passwords
5. Place users into correct OUs
6. Configure account properties
7. Enable accounts automatically

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Import-Csv ".\02-users.csv"

Example automation:

$users = Import-Csv ".\02-users.csv"

foreach ($user in $users) {
    Write-Host "Creating User: $($user.Username)"
}

--------------------------------------------------

NAMING CONVENTION EXAMPLES

Example usernames:
- trae.young
- dejounte.murray
- helpdesk.tech01
- identity.admin
- finance.manager01

Example email format:
firstname.lastname@hawkslab.local

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This file demonstrates:
- Identity lifecycle management
- Enterprise onboarding workflows
- HR-driven provisioning
- Role-Based Access Control (RBAC)
- Departmental identity segmentation
- Least privilege preparation
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- User accounts in ADUC
- Departmental OU population
- User properties
- Account naming standards
- Disabled/Enabled accounts
- Employee account organization

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Standardized identity creation
- Controlled account provisioning
- Department separation
- Principle of least privilege
- Administrative account separation
- Consistent naming conventions

NOTE:
This lab uses demonstration passwords only for educational purposes.

--------------------------------------------------

RELATED FILES

01-ou-structure.csv
- Organizational Unit hierarchy

03-groups.csv
- Security group creation

04-group-membership.csv
- User-to-group assignments

05-group-nesting.csv
- RBAC group nesting

06-shares.csv
- Shared folder permissions

07-offboard.csv
- User offboarding automation

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory User Administration
- IAM Automation
- HR-Driven Provisioning
- PowerShell Automation
- Identity Lifecycle Management
- Enterprise Identity Design
- RBAC Preparation
- Organizational Planning
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.