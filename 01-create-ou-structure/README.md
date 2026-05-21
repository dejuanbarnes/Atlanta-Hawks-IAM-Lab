# README.md — 01-create-ou-structure.ps1

## Overview
This PowerShell script automates the creation of the Organizational Unit (OU) hierarchy used in the Atlanta Hawks IAM Lab environment built in Active Directory.

The script reads data from the OU structure CSV file and automatically deploys a structured enterprise OU design used for identity management, delegation, Group Policy organization, and Role-Based Access Control (RBAC).

This script serves as the foundational deployment step for the entire IAM environment.

This script supports:
- Automated OU deployment
- Enterprise Active Directory organization
- IAM infrastructure preparation
- Administrative delegation readiness
- Group Policy organization
- RBAC architecture preparation
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
01-create-ou-structure.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Automate OU creation
- Standardize Active Directory structure
- Build enterprise identity organization
- Separate departments logically
- Prepare for RBAC implementation
- Support delegated administration
- Simplify future IAM operations

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Reading OU data from CSV
- Creating root Organizational Units
- Creating child Organizational Units
- Applying OU descriptions
- Validating OU creation
- Logging deployment actions
- Preparing the environment for future scripts

--------------------------------------------------

CSV DEPENDENCY

This script uses:
01-ou-structure.csv

The CSV defines:
- OU names
- Parent-child relationships
- Descriptions
- Organizational hierarchy

--------------------------------------------------

EXAMPLE OU STRUCTURE

Example hierarchy deployed:

Hawks
│
├── Players
├── Coaches
├── Finance
├── Marketing
├── Medical
├── IT
│   ├── Helpdesk
│   └── Privileged Accounts
├── Groups
└── Disabled Users

--------------------------------------------------

WHY OU STRUCTURE MATTERS

Organizational Units are critical because they:
- Organize identities logically
- Enable delegated administration
- Support Group Policy targeting
- Improve scalability
- Separate privileged accounts
- Simplify IAM management
- Align with enterprise design standards

Without proper OU design:
- Administration becomes difficult
- Security boundaries weaken
- Group Policy management becomes inconsistent

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Import CSV data
2. Validate OU entries
3. Create root OU
4. Create child OUs
5. Apply descriptions
6. Validate hierarchy creation
7. Log deployment actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\01-create-ou-structure.ps1

Example CSV import:

$ous = Import-Csv ".\01-ou-structure.csv"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Fully created OU hierarchy
- Departmental separation
- Administrative OU structure
- Active Directory organization readiness

Example result:
OU Created: Hawks
OU Created: IT
OU Created: Finance

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Initial IAM deployment
- Active Directory environment setup
- Enterprise identity organization
- Delegated administration preparation
- RBAC architecture deployment
- Group Policy planning
- Hybrid identity preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Active Directory Organizational Design
- Enterprise OU Architecture
- IAM Infrastructure Planning
- Delegated Administration
- Group Policy Organization
- PowerShell Automation
- Enterprise Identity Management
- Hybrid Identity Readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- OU hierarchy in ADUC
- Nested OU structure
- Privileged Accounts OU
- Disabled Users OU
- Departmental OUs
- PowerShell deployment output
- Successful OU creation logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Administrative separation
- Privileged account isolation
- Structured identity organization
- Standardized deployment workflows
- Enterprise-ready IAM architecture

Best Practice:
Separate privileged accounts into dedicated Organizational Units whenever possible.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated OU deployment:
- Improves deployment consistency
- Simplifies administration
- Reduces configuration errors
- Standardizes identity organization
- Accelerates environment setup
- Enhances scalability
- Supports enterprise governance

--------------------------------------------------

RELATED FILES

00-setup-folder-and-execution-policy.ps1
- Initial environment preparation

01-ou-structure.csv
- Organizational Unit definitions

02-users.csv
- User account creation

03-groups.csv
- Security group creation

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
- OU Architecture Design
- Enterprise IAM Planning
- PowerShell Automation
- Organizational Unit Management
- Infrastructure Deployment
- Identity Governance Preparation
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.