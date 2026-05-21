# README.md — 03-create-users.ps1

## Overview
This PowerShell script automates the creation of user accounts in the Atlanta Hawks IAM Lab environment built in Active Directory.

The script reads user identity data from a CSV file and provisions enterprise-style user accounts into the appropriate Organizational Units (OUs) with standardized naming conventions, passwords, and account configurations.

This script simulates how enterprise IAM teams automate onboarding and identity provisioning workflows using HR-driven identity data.

This script supports:
- Automated user provisioning
- Enterprise onboarding workflows
- IAM lifecycle management
- Department-based identity organization
- RBAC preparation
- Identity standardization
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
03-create-users.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Automate Active Directory user creation
- Standardize identity provisioning
- Simulate enterprise onboarding
- Organize users by department
- Apply naming conventions
- Support RBAC implementation
- Prepare identities for hybrid synchronization

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Reading user data from CSV
- Creating Active Directory user accounts
- Setting account passwords
- Assigning users to Organizational Units
- Applying account descriptions
- Configuring user properties
- Enabling accounts automatically
- Logging provisioning actions

--------------------------------------------------

CSV DEPENDENCY

This script uses:
02-users.csv

The CSV defines:
- First names
- Last names
- Usernames
- Departments
- Job titles
- OU placement
- Passwords
- Email addresses

--------------------------------------------------

IDENTITY PROVISIONING OVERVIEW

This script simulates enterprise onboarding workflows where:
- HR systems provide identity data
- IAM systems automate provisioning
- User accounts are standardized
- Department placement is automated
- RBAC-ready identities are created

--------------------------------------------------

EXAMPLE USER ACCOUNTS

Examples created by this script:
- trae.young
- dejounte.murray
- helpdesk.tech01
- identity.admin
- finance.manager01
- marketing.director01

--------------------------------------------------

NAMING CONVENTION EXAMPLES

Example username format:
firstname.lastname

Example email format:
firstname.lastname@hawkslab.local

Examples:
- trae.young@hawkslab.local
- helpdesk.tech01@hawkslab.local
- identity.admin@hawkslab.local

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Import CSV data
2. Validate user entries
3. Create Active Directory accounts
4. Set passwords
5. Assign Organizational Units
6. Configure account properties
7. Enable accounts
8. Log provisioning actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\03-create-users.ps1

Example CSV import:

$users = Import-Csv ".\02-users.csv"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- User accounts created
- Departmental placement completed
- Passwords configured
- Accounts enabled
- Enterprise identity structure deployed

Example result:
User Created: trae.young
User Created: helpdesk.tech01
User Created: finance.manager01

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Automated onboarding
- Enterprise identity provisioning
- Departmental user management
- RBAC deployment preparation
- IAM workflow simulations
- Access governance
- Identity lifecycle management
- Hybrid identity synchronization preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Identity lifecycle management
- Automated onboarding
- Enterprise provisioning workflows
- HR-driven IAM automation
- Department-based identity segmentation
- Identity standardization
- Least privilege preparation
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- User accounts in ADUC
- Departmental OU placement
- User account properties
- PowerShell provisioning output
- Enabled user accounts
- Naming convention examples
- Successful deployment logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Standardized account provisioning
- Controlled onboarding workflows
- Department segmentation
- Administrative account separation
- Consistent identity naming conventions
- Centralized identity management

Best Practice:
Use standardized naming conventions and automate identity provisioning whenever possible.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated user provisioning:
- Reduces onboarding time
- Improves consistency
- Minimizes human error
- Enhances audit readiness
- Simplifies administration
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
- User account definitions

02-create-security-groups.ps1
- Security group deployment

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
- User Provisioning Automation
- IAM Lifecycle Management
- Enterprise Onboarding Workflows
- PowerShell Scripting
- Identity Governance
- RBAC Preparation
- Infrastructure Automation
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.