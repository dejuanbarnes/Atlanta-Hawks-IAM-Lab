# README.md — 05-create-group-nesting.ps1

## Overview
This PowerShell script automates nested security group assignments in the Atlanta Hawks IAM Lab environment built in Active Directory.

The script reads nested group relationships from a CSV file and implements enterprise-style Role-Based Access Control (RBAC) architecture using group nesting methodologies such as AGDLP.

This script is critical for demonstrating scalable enterprise access management because it separates users, roles, and permissions into layered security structures.

This script supports:
- Automated group nesting
- Advanced RBAC implementation
- Permission inheritance
- Enterprise access management
- Scalable IAM architecture
- Least privilege enforcement
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
05-create-group-nesting.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Automate nested security group creation
- Implement enterprise RBAC architecture
- Simplify permission management
- Reduce administrative overhead
- Standardize access inheritance
- Improve IAM scalability
- Prepare for enterprise governance workflows

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Reading group nesting data from CSV
- Locating child security groups
- Locating parent security groups
- Adding groups into parent groups
- Creating permission inheritance structures
- Validating nested memberships
- Logging deployment actions

--------------------------------------------------

CSV DEPENDENCY

This script uses:
05-group-nesting.csv

The CSV defines:
- Child groups
- Parent groups
- Nested RBAC relationships
- Permission inheritance structure

--------------------------------------------------

GROUP NESTING ARCHITECTURE

This lab follows enterprise IAM methodology:

Users → Global Groups → Domain Local Groups → Permissions

This architecture is commonly known as:

AGDLP

Accounts → Global → Domain Local → Permissions

--------------------------------------------------

WHY GROUP NESTING MATTERS

Nested group architecture:
- Simplifies administration
- Improves scalability
- Centralizes permissions
- Reduces duplicate access assignments
- Enhances auditing
- Supports least privilege access
- Aligns with enterprise IAM standards

Without group nesting:
- Permissions become difficult to manage
- Access sprawl increases
- Auditing becomes more complex

--------------------------------------------------

EXAMPLE GROUP NESTING

Examples created by this script:
- GG-Hawks-IT → DL-Hawks-IT-Access
- GG-Hawks-Helpdesk → DL-Hawks-Support-Access
- GG-Hawks-Finance → DL-Hawks-Finance-Share
- GG-Hawks-Admins → DL-Hawks-Privileged-Access

--------------------------------------------------

ACCESS CONTROL EXAMPLE

Example workflow:

User:
helpdesk.tech01

Member Of:
GG-Hawks-Helpdesk

Nested Into:
DL-Hawks-Support-Access

Permissions Granted:
- Shared drive access
- Helpdesk resource access
- Support administration tools
- Departmental resource permissions

This demonstrates:
- Indirect permission inheritance
- Centralized access control
- Enterprise RBAC scalability

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Import CSV data
2. Validate nesting entries
3. Locate child groups
4. Locate parent groups
5. Create nested memberships
6. Validate inheritance structure
7. Log deployment actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\05-create-group-nesting.ps1

Example CSV import:

$nesting = Import-Csv ".\05-group-nesting.csv"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Nested security groups created
- Permission inheritance enabled
- RBAC hierarchy deployed
- Enterprise access model completed

Example result:
Nested GG-Hawks-IT into DL-Hawks-IT-Access
Nested GG-Hawks-Finance into DL-Hawks-Finance-Share
Nested GG-Hawks-Admins into DL-Hawks-Privileged-Access

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Shared folder permissions
- Administrative delegation
- Departmental resource access
- Enterprise access management
- Identity governance
- Group Policy filtering
- Least privilege enforcement
- Hybrid identity synchronization preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Advanced RBAC implementation
- AGDLP architecture
- Group nesting management
- Permission inheritance
- Enterprise access control
- Identity governance
- IAM scalability
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Nested security groups
- Group "Members Of" tabs
- Permission inheritance examples
- PowerShell deployment output
- RBAC hierarchy
- Department access groups
- Successful nesting logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Layered access control
- Group-based permission inheritance
- Least privilege access
- Administrative separation
- Centralized access management
- Enterprise RBAC architecture

Best Practice:
Use nested security groups to separate identities, roles, and permissions in enterprise environments.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated group nesting:
- Simplifies administration
- Improves scalability
- Enhances audit readiness
- Reduces configuration mistakes
- Standardizes access management
- Accelerates onboarding/offboarding
- Supports enterprise governance

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

04-assign-group-membership.ps1
- RBAC membership automation

05-group-nesting.csv
- Nested RBAC definitions

06-shares.csv
- Shared folder permissions

07-offboard.csv
- User offboarding automation

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Advanced RBAC Architecture
- AGDLP Methodology
- Group Nesting Management
- IAM Automation
- PowerShell Scripting
- Enterprise Access Control
- Identity Governance
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.