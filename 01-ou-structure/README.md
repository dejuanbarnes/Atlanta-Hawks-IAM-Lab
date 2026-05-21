# README.md — 01-ou-structure.csv

## Overview
This CSV file defines the Organizational Unit (OU) structure for the Atlanta Hawks IAM Lab built in Active Directory.

The OU structure is the foundational hierarchy used to organize:
- Users
- Groups
- Administrative boundaries
- Delegation
- Group Policy Objects (GPOs)
- Access management

This file is designed to simulate a real enterprise IAM environment and supports automated provisioning through PowerShell scripts.

--------------------------------------------------

FILE NAME
01-ou-structure.csv

--------------------------------------------------

PURPOSE

The purpose of this file is to:
- Build the company OU hierarchy automatically
- Organize departments logically
- Separate privileged/admin accounts
- Prepare for RBAC implementation
- Support lifecycle management
- Support future hybrid identity integration with Microsoft Entra ID

--------------------------------------------------

CSV STRUCTURE

Column Name: OUName
Description: Name of the Organizational Unit

Column Name: ParentOU
Description: Parent OU where the new OU will be created

Column Name: Description
Description: Description of the OU purpose

--------------------------------------------------

OU DESIGN BREAKDOWN

Hawks
- Root company OU

Players
- Stores player user accounts

Coaches
- Stores coaching staff accounts

FrontOffice
- Stores executive and operational staff

Finance
- Finance department accounts

Medical
- Medical and training staff

Marketing
- Marketing and media personnel

IT
- IT department users

Helpdesk
- Tier 1 support personnel

Privileged Accounts
- Administrative and elevated accounts

Disabled Users
- Offboarded or disabled accounts

Groups
- Security and RBAC groups

Shared Resources
- Shared folders and resources

--------------------------------------------------

EXAMPLE USE CASES

This OU structure supports:
- Role-Based Access Control (RBAC)
- Delegated administration
- Group Policy assignment
- Department isolation
- Identity lifecycle management
- Enterprise IAM simulations
- Audit and compliance demonstrations

--------------------------------------------------

EXAMPLE AUTOMATION WORKFLOW

This CSV is typically consumed by:
- 01-create-ou-structure.ps1
- 09-run-full-lab-build.ps1

The script will:
1. Read the CSV
2. Create the root OU
3. Create child OUs
4. Apply descriptions
5. Build the enterprise hierarchy automatically

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Import-Csv ".\01-ou-structure.csv"

Example automation:

$ous = Import-Csv ".\01-ou-structure.csv"

foreach ($ou in $ous) {
    Write-Host "Creating OU: $($ou.OUName)"
}

--------------------------------------------------

LAB OBJECTIVES

By using this file, the lab demonstrates:
- Enterprise IAM design principles
- Proper AD organizational planning
- Separation of privileged identities
- Administrative scalability
- Real-world Active Directory architecture

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Active Directory Users and Computers (ADUC)
- Full OU hierarchy
- OU descriptions
- Privileged Accounts OU
- Disabled Users OU
- Nested OU structure

--------------------------------------------------

RELATED FILES

02-users.csv
- User account creation

03-groups.csv
- Security group creation

04-group-membership.csv
- Group assignments

05-group-nesting.csv
- Nested RBAC structure

06-shares.csv
- Shared folder permissions

07-offboard.csv
- Offboarding automation

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Organizational Unit Design
- IAM Architecture
- RBAC Planning
- PowerShell Automation
- Identity Lifecycle Management
- Enterprise Infrastructure Planning
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Entra ID portfolio development.