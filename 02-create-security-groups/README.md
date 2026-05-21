# README.md — 02-create-security-groups.ps1

## Overview
This PowerShell script automates the creation of security groups used in the Atlanta Hawks IAM Lab environment built in Active Directory.

The script reads security group definitions from a CSV file and deploys enterprise-style Role-Based Access Control (RBAC) groups used to manage permissions, administrative roles, and departmental access.

This script is a core component of the IAM lab because security groups serve as the foundation for scalable enterprise access management.

This script supports:
- Automated security group deployment
- RBAC implementation
- Department-based access control
- Enterprise identity management
- Group-based permission design
- IAM automation
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
02-create-security-groups.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Automate security group creation
- Standardize RBAC deployment
- Organize access control structures
- Simplify permission management
- Reduce administrative overhead
- Support scalable IAM architecture
- Prepare for enterprise governance workflows

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Reading security group data from CSV
- Creating security groups automatically
- Applying group descriptions
- Assigning group scopes
- Assigning group categories
- Placing groups into Organizational Units
- Logging deployment actions

--------------------------------------------------

CSV DEPENDENCY

This script uses:
03-groups.csv

The CSV defines:
- Group names
- Group scopes
- Group categories
- OU placement
- Group descriptions

--------------------------------------------------

GROUP ARCHITECTURE OVERVIEW

This lab follows enterprise RBAC principles:

Users → Groups → Permissions

Instead of assigning permissions directly to users, permissions are assigned to security groups.

This structure:
- Improves scalability
- Simplifies auditing
- Reduces permission sprawl
- Supports least privilege access
- Aligns with enterprise IAM standards

--------------------------------------------------

EXAMPLE SECURITY GROUPS

Examples created by this script:
- GG-Hawks-IT
- GG-Hawks-Helpdesk
- GG-Hawks-Finance
- GG-Hawks-Marketing
- GG-Hawks-Medical
- GG-Hawks-Admins
- GG-Hawks-Executives

--------------------------------------------------

GROUP TYPE OVERVIEW

The script may create:
- Global Security Groups
- Domain Local Security Groups
- Universal Security Groups

Example usage:
Global Groups:
Used for department users

Domain Local Groups:
Used for assigning permissions to resources

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Import CSV data
2. Validate group entries
3. Create security groups
4. Assign descriptions
5. Apply scopes/categories
6. Place groups into proper OUs
7. Validate successful deployment
8. Log creation actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\02-create-security-groups.ps1

Example CSV import:

$groups = Import-Csv ".\03-groups.csv"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Security groups created
- Groups placed into correct OUs
- RBAC structure deployment
- Enterprise access model readiness

Example result:
Group Created: GG-Hawks-IT
Group Created: GG-Hawks-Finance
Group Created: GG-Hawks-Helpdesk

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- RBAC implementation
- Shared folder permissions
- Administrative delegation
- Group Policy filtering
- Enterprise access management
- Identity governance
- Departmental access segmentation
- Hybrid identity synchronization preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Role-Based Access Control (RBAC)
- Enterprise group architecture
- Access management automation
- Least privilege enforcement
- Department-based segmentation
- Group-based permission management
- Identity governance preparation
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Security groups in ADUC
- Group OU organization
- Group properties
- Group descriptions
- PowerShell deployment output
- RBAC structure
- Group scopes/categories

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Group-based permission assignment
- No direct user permission assignments
- Administrative role separation
- Department segmentation
- Standardized naming conventions
- Centralized access management

Best Practice:
Always assign permissions to groups instead of individual users.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated group deployment:
- Improves consistency
- Simplifies administration
- Enhances audit readiness
- Reduces configuration mistakes
- Accelerates environment deployment
- Supports enterprise scalability
- Strengthens governance controls

--------------------------------------------------

RELATED FILES

00-setup-folder-and-execution-policy.ps1
- Initial environment preparation

01-ou-structure.csv
- Organizational Unit definitions

01-create-ou-structure.ps1
- OU deployment automation

02-users.csv
- User account creation

03-groups.csv
- Security group definitions

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
- Security Group Management
- IAM Automation
- PowerShell Scripting
- Enterprise Access Control
- Identity Governance
- Infrastructure Deployment
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.