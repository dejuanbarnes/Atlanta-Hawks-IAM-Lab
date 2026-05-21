# README.md — 05-group-nesting.csv

## Overview
This CSV file defines nested group relationships used in the Atlanta Hawks IAM Lab environment built in Active Directory.

Group nesting is a core enterprise IAM practice used to simplify Role-Based Access Control (RBAC), permission inheritance, and scalable access management.

Instead of assigning permissions directly to user groups, security groups are nested into higher-level permission groups that control access to resources.

This file supports:
- Advanced RBAC implementation
- Scalable access control
- Permission inheritance
- Administrative simplification
- Enterprise IAM simulations
- Hybrid identity preparation for Microsoft Entra ID

--------------------------------------------------

FILE NAME
05-group-nesting.csv

--------------------------------------------------

PURPOSE

The purpose of this file is to:
- Automate nested group assignments
- Simplify permission management
- Support enterprise RBAC architecture
- Reduce administrative overhead
- Standardize access control
- Improve scalability
- Prepare for enterprise identity governance

--------------------------------------------------

CSV STRUCTURE

Column Name: ChildGroup
Description: Group being added into another group

Column Name: ParentGroup
Description: Group receiving the nested membership

--------------------------------------------------

GROUP NESTING DESIGN

This lab follows the enterprise access model:

Users → Global Groups → Domain Local Groups → Permissions

This structure is commonly known as:
AGDLP

Accounts → Global → Domain Local → Permissions

--------------------------------------------------

RBAC NESTING EXAMPLE

Example workflow:

User:
helpdesk.tech01

Member Of:
GG-Hawks-Helpdesk

Nested Into:
DL-Hawks-ITSupport-Access

Permissions Granted:
- Helpdesk share access
- IT support tools
- Password reset permissions
- Workstation administration rights

This demonstrates:
- Indirect permission inheritance
- Centralized access control
- Enterprise RBAC scalability

--------------------------------------------------

EXAMPLE GROUP NESTING

Examples included in this lab:
- GG-Hawks-IT → DL-Hawks-IT-Access
- GG-Hawks-Finance → DL-Hawks-Finance-Share
- GG-Hawks-Marketing → DL-Hawks-Marketing-Resources
- GG-Hawks-Admins → DL-Hawks-Privileged-Access

--------------------------------------------------

EXAMPLE USE CASES

This CSV supports:
- Shared folder access
- Department resource access
- Administrative role delegation
- GPO filtering
- Enterprise permission inheritance
- Identity governance
- Audit preparation
- Least privilege enforcement

--------------------------------------------------

EXAMPLE AUTOMATION WORKFLOW

This CSV is typically used with:
- 05-create-group-nesting.ps1
- 09-run-full-lab-build.ps1

The scripts will:
1. Read the CSV
2. Locate child groups
3. Locate parent groups
4. Create nested memberships
5. Validate nesting relationships
6. Log permission inheritance structure

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Import-Csv ".\05-group-nesting.csv"

Example automation:

$nesting = Import-Csv ".\05-group-nesting.csv"

foreach ($group in $nesting) {
    Write-Host "Adding $($group.ChildGroup) into $($group.ParentGroup)"
}

--------------------------------------------------

WHY GROUP NESTING MATTERS

Benefits of nested group architecture:
- Simplifies administration
- Improves scalability
- Reduces duplicate permissions
- Makes audits easier
- Centralizes access management
- Supports least privilege
- Standardizes enterprise IAM operations

Without nesting:
Permissions become difficult to manage as environments grow.

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This file demonstrates:
- Advanced RBAC architecture
- AGDLP methodology
- Permission inheritance
- Enterprise IAM scalability
- Identity governance
- Access standardization
- Least privilege enforcement
- Group-based security design

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Nested group memberships
- Group "Members Of" tabs
- Security group hierarchy
- Permission inheritance examples
- Department access groups
- Administrative access groups

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- No direct user permission assignments
- Layered access control
- Administrative separation
- Scalable IAM design
- Centralized permission management
- Enterprise RBAC architecture

Best Practice:
Always assign permissions through nested security groups whenever possible.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using nested group structures:
- Improves operational efficiency
- Simplifies onboarding/offboarding
- Enhances security governance
- Reduces configuration mistakes
- Accelerates auditing processes
- Supports enterprise-scale environments

--------------------------------------------------

RELATED FILES

01-ou-structure.csv
- Organizational Unit hierarchy

02-users.csv
- User account creation

03-groups.csv
- Security group creation

04-group-membership.csv
- User-to-group assignments

06-shares.csv
- Shared folder permissions

07-offboard.csv
- User offboarding automation

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Advanced RBAC Design
- AGDLP Architecture
- Group Nesting Management
- Enterprise Access Control
- IAM Automation
- PowerShell Scripting
- Identity Governance
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.