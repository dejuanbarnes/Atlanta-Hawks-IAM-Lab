# README.md — 04-assign-group-membership.ps1

## Overview
This PowerShell script automates the assignment of user accounts to security groups in the Atlanta Hawks IAM Lab environment built in Active Directory.

The script reads group membership assignments from a CSV file and applies Role-Based Access Control (RBAC) by adding users into the appropriate security groups based on department, role, and access requirements.

This script is a critical IAM component because it connects identities to access control structures without assigning permissions directly to users.

This script supports:
- Automated group membership assignment
- RBAC implementation
- Department-based access control
- Identity governance
- Enterprise onboarding workflows
- Least privilege enforcement
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
04-assign-group-membership.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Automate user-to-group assignments
- Implement RBAC principles
- Standardize access control workflows
- Simplify permission management
- Reduce administrative overhead
- Support scalable IAM architecture
- Prepare identities for enterprise governance

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Reading membership assignments from CSV
- Locating Active Directory user accounts
- Locating security groups
- Adding users to groups
- Validating membership assignments
- Logging assignment actions
- Preparing identities for permission inheritance

--------------------------------------------------

CSV DEPENDENCY

This script uses:
04-group-membership.csv

The CSV defines:
- Usernames
- Target security groups
- Department-based assignments
- RBAC membership structure

--------------------------------------------------

RBAC ACCESS MODEL

This lab follows enterprise RBAC architecture:

Users → Groups → Permissions

Users receive access through security group membership rather than direct permission assignments.

This structure:
- Improves scalability
- Simplifies auditing
- Centralizes access control
- Supports least privilege access
- Aligns with enterprise IAM standards

--------------------------------------------------

EXAMPLE GROUP MEMBERSHIPS

Examples assigned by this script:
- trae.young → GG-Hawks-Players
- helpdesk.tech01 → GG-Hawks-Helpdesk
- identity.admin → GG-Hawks-Admins
- finance.manager01 → GG-Hawks-Finance
- marketing.director01 → GG-Hawks-Marketing

--------------------------------------------------

ACCESS CONTROL EXAMPLE

Example workflow:

User:
helpdesk.tech01

Assigned To:
GG-Hawks-Helpdesk

Permissions Inherited:
- Helpdesk shared drive access
- Password reset delegation
- Support tools access
- IT support resources

This demonstrates:
- Indirect permission inheritance
- Centralized IAM management
- Enterprise RBAC implementation

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Import CSV data
2. Validate membership entries
3. Locate Active Directory users
4. Locate security groups
5. Add users to groups
6. Validate membership assignments
7. Log assignment actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\04-assign-group-membership.ps1

Example CSV import:

$memberships = Import-Csv ".\04-group-membership.csv"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Users added to correct groups
- RBAC structure implemented
- Access inheritance enabled
- Departmental access segmentation completed

Example result:
Added trae.young to GG-Hawks-Players
Added helpdesk.tech01 to GG-Hawks-Helpdesk
Added finance.manager01 to GG-Hawks-Finance

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Automated onboarding
- Department access management
- Shared folder access control
- Administrative delegation
- Group Policy targeting
- Identity governance
- Access standardization
- Hybrid identity synchronization preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Role-Based Access Control (RBAC)
- Group-based access management
- Enterprise onboarding workflows
- Identity governance
- Least privilege enforcement
- Department-based segmentation
- Access standardization
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- User group memberships
- Group "Members" tabs
- Security group properties
- RBAC hierarchy
- PowerShell assignment output
- Departmental access groups
- Successful membership logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- No direct user permission assignments
- Group-based access control
- Least privilege access
- Administrative role separation
- Centralized access management
- Standardized onboarding workflows

Best Practice:
Always assign permissions to groups and assign users to those groups instead of granting direct access.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated membership assignments:
- Simplifies administration
- Reduces human error
- Improves audit readiness
- Accelerates onboarding
- Standardizes access control
- Enhances governance
- Supports enterprise scalability

--------------------------------------------------

RELATED FILES

00-setup-folder-and-execution-policy.ps1
- Initial environment preparation

01-ou-structure.csv
- Organizational Unit definitions

01-create-ou-structure.ps1
- OU deployment automation

02-users.csv
- User account definitions

02-create-security-groups.ps1
- Security group deployment

03-groups.csv
- Security group definitions

03-create-users.ps1
- User provisioning automation

04-group-membership.csv
- User-to-group assignments

05-group-nesting.csv
- Nested RBAC architecture

06-shares.csv
- Shared folder permissions

07-offboard.csv
- User offboarding automation

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- RBAC Implementation
- Group Membership Management
- IAM Automation
- PowerShell Scripting
- Identity Governance
- Enterprise Access Control
- Infrastructure Automation
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.