# README.md — 03-groups.csv

## Overview
This CSV file defines all security groups used in the Atlanta Hawks IAM Lab environment built in Active Directory.

The groups in this file are used to implement Role-Based Access Control (RBAC) and simulate how enterprise organizations manage permissions using security groups instead of assigning permissions directly to users.

This file supports:
- Security group creation
- Department-based access control
- RBAC implementation
- Permission delegation
- Access management automation
- Hybrid identity preparation for Microsoft Entra ID

--------------------------------------------------

FILE NAME
03-groups.csv

--------------------------------------------------

PURPOSE

The purpose of this file is to:
- Create enterprise security groups automatically
- Support RBAC architecture
- Separate permissions by department
- Simplify permission management
- Reduce direct user-to-resource assignments
- Simulate real-world IAM environments
- Prepare for cloud identity synchronization

--------------------------------------------------

CSV STRUCTURE

Column Name: GroupName
Description: Name of the security group

Column Name: GroupScope
Description: Group scope type (Global, Domain Local, Universal)

Column Name: GroupCategory
Description: Security or Distribution group

Column Name: OU
Description: Organizational Unit where the group will be created

Column Name: Description
Description: Purpose of the security group

--------------------------------------------------

GROUP DESIGN PRINCIPLES

This lab follows the enterprise RBAC model:

Users → Groups → Permissions

Instead of assigning permissions directly to users, access is managed through security groups.

This structure:
- Improves scalability
- Simplifies auditing
- Reduces administrative overhead
- Supports least privilege access
- Aligns with enterprise IAM standards

--------------------------------------------------

EXAMPLE SECURITY GROUPS

Examples included in this lab:
- GG-Hawks-Players
- GG-Hawks-Coaches
- GG-Hawks-Finance
- GG-Hawks-Marketing
- GG-Hawks-Medical
- GG-Hawks-IT
- GG-Hawks-Helpdesk
- GG-Hawks-Admins
- GG-Hawks-Executives

--------------------------------------------------

GROUP TYPE BREAKDOWN

Global Groups
- Used for grouping users by department or role

Domain Local Groups
- Used for assigning permissions to resources

Universal Groups
- Used for multi-domain environments

Security Groups
- Used for permission assignments

Distribution Groups
- Used for email distribution lists

--------------------------------------------------

EXAMPLE USE CASES

This CSV supports:
- RBAC implementation
- Shared folder access
- Department access control
- GPO filtering
- Delegated administration
- Audit preparation
- Access reviews
- Least privilege enforcement
- Enterprise identity management

--------------------------------------------------

EXAMPLE AUTOMATION WORKFLOW

This CSV is typically used with:
- 02-create-security-groups.ps1
- 09-run-full-lab-build.ps1

The scripts will:
1. Read the CSV
2. Create security groups automatically
3. Apply descriptions
4. Assign scopes/categories
5. Place groups into the correct OU structure

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Import-Csv ".\03-groups.csv"

Example automation:

$groups = Import-Csv ".\03-groups.csv"

foreach ($group in $groups) {
    Write-Host "Creating Group: $($group.GroupName)"
}

--------------------------------------------------

RBAC ARCHITECTURE OVERVIEW

Example RBAC Flow:

User:
trae.young

Assigned To:
GG-Hawks-Players

Permissions Granted Through:
DL-Hawks-LockerRoom-Access

This demonstrates:
- Indirect permission assignment
- Centralized access management
- Simplified auditing

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This file demonstrates:
- Role-Based Access Control (RBAC)
- Security group architecture
- Least privilege access
- Group-based permissions
- Enterprise access modeling
- IAM scalability
- Identity governance preparation
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Security groups in ADUC
- Group properties
- Group descriptions
- Group OU organization
- Group membership tabs
- Nested group relationships

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- No direct user permission assignments
- Department-based segmentation
- Administrative role separation
- Consistent naming conventions
- Scalable access control
- Centralized permission management

Recommended naming standard:
GG-Department-Role

Examples:
- GG-Hawks-IT
- GG-Hawks-Helpdesk
- GG-Hawks-Finance

--------------------------------------------------

RELATED FILES

01-ou-structure.csv
- Organizational Unit hierarchy

02-users.csv
- User account creation

04-group-membership.csv
- User-to-group assignments

05-group-nesting.csv
- Nested RBAC architecture

06-shares.csv
- Shared folder permissions

07-offboard.csv
- Offboarding automation

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Group Administration
- RBAC Architecture
- Enterprise IAM Design
- Access Control Management
- PowerShell Automation
- Security Group Planning
- Identity Governance Preparation
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.