# README.md — 06-create-shared-folders.ps1

## Overview
This PowerShell script automates the creation of shared folders, network shares, and permission assignments in the Atlanta Hawks IAM Lab environment built in Active Directory.

The script reads shared resource definitions from a CSV file and deploys enterprise-style file shares using Role-Based Access Control (RBAC) principles to assign permissions through security groups rather than directly to users.

This script simulates real-world enterprise file server administration and access governance workflows.

This script supports:
- Automated shared folder deployment
- NTFS permission management
- Network share configuration
- RBAC-based access control
- Departmental resource segmentation
- Enterprise file server administration
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
06-create-shared-folders.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Automate shared folder creation
- Configure network shares
- Assign NTFS permissions
- Implement RBAC-based access control
- Standardize file server deployments
- Simplify permission management
- Support enterprise governance workflows

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Reading shared folder definitions from CSV
- Creating folder paths automatically
- Creating SMB network shares
- Assigning NTFS permissions
- Assigning share permissions
- Applying security group access
- Logging deployment actions

--------------------------------------------------

CSV DEPENDENCY

This script uses:
06-shares.csv

The CSV defines:
- Share names
- Folder paths
- Security groups
- Permission levels
- Department resource assignments

--------------------------------------------------

ACCESS CONTROL MODEL

This lab follows enterprise RBAC methodology:

Users → Security Groups → Shared Resources

Permissions are assigned to security groups rather than directly to users.

This structure:
- Simplifies administration
- Improves scalability
- Enhances auditing
- Supports least privilege access
- Aligns with enterprise IAM standards

--------------------------------------------------

EXAMPLE SHARED FOLDERS

Examples created by this script:
- Hawks-Finance
- Hawks-Marketing
- Hawks-IT
- Hawks-Helpdesk
- Hawks-Medical
- Hawks-Executives
- Hawks-SharedResources

--------------------------------------------------

EXAMPLE PERMISSION ASSIGNMENTS

Examples deployed by this script:

GG-Hawks-Finance
→ Modify Access
→ \\HAWKS-DC01\Finance

GG-Hawks-Marketing
→ Read Access
→ \\HAWKS-DC01\Marketing

GG-Hawks-Admins
→ Full Control
→ \\HAWKS-DC01\IT

--------------------------------------------------

NTFS AND SHARE PERMISSIONS

This script demonstrates:
- NTFS permissions
- SMB share permissions
- Permission inheritance
- Group-based access assignments
- Department resource isolation

Common permissions:
- Read
- Modify
- Full Control

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Import CSV data
2. Validate share definitions
3. Create local folders
4. Configure SMB shares
5. Assign NTFS permissions
6. Assign share permissions
7. Validate access assignments
8. Log deployment actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\06-create-shared-folders.ps1

Example CSV import:

$shares = Import-Csv ".\06-shares.csv"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Shared folders created
- SMB shares configured
- NTFS permissions assigned
- Security group access applied
- Departmental resource segmentation completed

Example result:
Share Created: Hawks-Finance
Permissions Assigned: GG-Hawks-Finance → Modify
Share Created: Hawks-IT

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Department file share deployment
- Enterprise file server administration
- Access governance
- Shared drive provisioning
- Identity-driven access control
- RBAC implementation
- Security segmentation
- Hybrid identity synchronization preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- RBAC-based resource access
- NTFS permission management
- Shared folder administration
- Enterprise access governance
- Least privilege enforcement
- Identity-driven access control
- Group-based permissions
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Shared folder structure
- SMB shares
- NTFS permission tabs
- Share permissions
- Security group assignments
- PowerShell deployment output
- Successful access configuration logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Group-based permission assignments
- No direct user permissions
- Least privilege access
- Department resource isolation
- Administrative role separation
- Centralized access management

Best Practice:
Always assign NTFS and share permissions to security groups instead of individual users.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated shared folder deployment:
- Simplifies administration
- Improves consistency
- Reduces configuration mistakes
- Enhances audit readiness
- Accelerates deployment
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

03-create-users.ps1
- User provisioning automation

04-group-membership.csv
- User-to-group assignments

04-assign-group-membership.ps1
- RBAC membership automation

05-group-nesting.csv
- Nested RBAC architecture

05-create-group-nesting.ps1
- Group nesting automation

06-shares.csv
- Shared folder definitions

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
- PowerShell Automation
- Identity Governance
- Infrastructure Deployment
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.