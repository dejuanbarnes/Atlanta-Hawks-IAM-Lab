# README.md — 06-shares.csv

## Overview
This CSV file defines shared folders, network shares, and permission assignments used in the Atlanta Hawks IAM Lab environment built in Active Directory.

The file is used to automate the creation of departmental shared resources and assign access permissions through security groups following Role-Based Access Control (RBAC) principles.

This lab demonstrates how enterprise organizations manage file share access securely and at scale using group-based permissions rather than assigning permissions directly to individual users.

This file supports:
- Shared folder creation
- NTFS permission assignments
- Network share configuration
- RBAC-based access control
- Departmental resource segmentation
- Enterprise IAM simulations
- Hybrid identity preparation for Microsoft Entra ID

--------------------------------------------------

FILE NAME
06-shares.csv

--------------------------------------------------

PURPOSE

The purpose of this file is to:
- Automate shared folder deployment
- Assign access using security groups
- Implement enterprise RBAC practices
- Centralize permission management
- Simulate real-world file server administration
- Enforce least privilege access
- Standardize resource access control

--------------------------------------------------

CSV STRUCTURE

Column Name: ShareName
Description: Name of the shared folder

Column Name: FolderPath
Description: Local path where the folder will be created

Column Name: GroupName
Description: Security group receiving permissions

Column Name: PermissionLevel
Description: Access level assigned to the group

--------------------------------------------------

PERMISSION MODEL

This lab follows enterprise permission design:

Users → Security Groups → Shared Resources

Permissions are assigned to groups, not users.

This structure:
- Simplifies management
- Improves scalability
- Enhances security
- Supports auditing
- Reduces configuration errors

--------------------------------------------------

EXAMPLE SHARES

Examples included in this lab:
- Hawks-Finance
- Hawks-Marketing
- Hawks-IT
- Hawks-Helpdesk
- Hawks-Medical
- Hawks-Executives
- Hawks-SharedResources

--------------------------------------------------

EXAMPLE PERMISSION LEVELS

Typical permissions used:
- Read
- Modify
- Full Control

Examples:
GG-Hawks-Finance → Modify → Finance Share
GG-Hawks-Marketing → Read → Marketing Share
GG-Hawks-Admins → Full Control → IT Share

--------------------------------------------------

EXAMPLE USE CASES

This CSV supports:
- Department file access
- Shared drive deployment
- Administrative resource management
- Access governance
- Enterprise file server simulations
- Permission auditing
- Security segmentation
- RBAC implementation

--------------------------------------------------

EXAMPLE AUTOMATION WORKFLOW

This CSV is typically used with:
- 06-create-shared-folders.ps1
- 09-run-full-lab-build.ps1

The scripts will:
1. Read the CSV
2. Create folder paths
3. Configure network shares
4. Assign NTFS permissions
5. Assign share permissions
6. Validate access assignments
7. Log deployment actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Import-Csv ".\06-shares.csv"

Example automation:

$shares = Import-Csv ".\06-shares.csv"

foreach ($share in $shares) {
    Write-Host "Creating Share: $($share.ShareName)"
}

--------------------------------------------------

ACCESS CONTROL EXAMPLE

Example workflow:

User:
finance.manager01

Member Of:
GG-Hawks-Finance

Permissions Inherited:
Modify Access to:
\\HAWKS-DC01\Finance

This demonstrates:
- Group-based permission inheritance
- Centralized access management
- Enterprise RBAC implementation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This file demonstrates:
- RBAC-based resource access
- NTFS permission management
- Shared folder administration
- Least privilege enforcement
- Enterprise file server design
- Access governance
- Department resource segmentation
- Identity-driven access control

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Shared folders
- NTFS permissions
- Share permissions
- Security group assignments
- File server structure
- Network share access
- Permission inheritance examples

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- No direct user permission assignments
- Group-based access control
- Least privilege access
- Department isolation
- Administrative role separation
- Centralized permission management

Best Practice:
Always assign resource permissions to security groups instead of individual users.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated share provisioning:
- Simplifies administration
- Standardizes permissions
- Improves audit readiness
- Enhances scalability
- Reduces human error
- Accelerates onboarding/offboarding
- Supports enterprise governance

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

05-group-nesting.csv
- Nested RBAC architecture

07-offboard.csv
- User offboarding automation

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- NTFS Permission Management
- Shared Folder Administration
- RBAC Implementation
- Enterprise Access Control
- IAM Automation
- PowerShell Scripting
- Identity Governance
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.