# README.md — 04-group-membership.csv

## Overview
This CSV file defines user-to-group assignments for the Atlanta Hawks IAM Lab environment built in Active Directory.

The file is responsible for assigning users to security groups in order to implement Role-Based Access Control (RBAC) throughout the environment.

Instead of assigning permissions directly to users, users are added to security groups that inherit permissions to resources, applications, and shared folders.

This file supports:
- RBAC implementation
- Automated group assignments
- Department-based access control
- Identity lifecycle management
- Enterprise IAM simulations
- Hybrid identity preparation for Microsoft Entra ID

--------------------------------------------------

FILE NAME
04-group-membership.csv

--------------------------------------------------

PURPOSE

The purpose of this file is to:
- Automate group membership assignments
- Implement RBAC principles
- Separate permissions by job role
- Reduce direct permission assignments
- Simulate enterprise onboarding workflows
- Centralize access management
- Prepare identities for hybrid synchronization

--------------------------------------------------

CSV STRUCTURE

Column Name: Username
Description: User account being assigned

Column Name: GroupName
Description: Security group the user will join

--------------------------------------------------

RBAC DESIGN MODEL

This lab follows the enterprise IAM model:

Users → Groups → Permissions

Users are assigned to groups based on:
- Department
- Job function
- Access requirements
- Administrative role
- Security boundaries

Permissions are never assigned directly to individual users.

--------------------------------------------------

EXAMPLE MEMBERSHIP ASSIGNMENTS

Example assignments:
- trae.young → GG-Hawks-Players
- helpdesk.tech01 → GG-Hawks-Helpdesk
- identity.admin → GG-Hawks-Admins
- finance.manager01 → GG-Hawks-Finance
- marketing.director01 → GG-Hawks-Marketing

--------------------------------------------------

EXAMPLE USE CASES

This CSV supports:
- Automated onboarding
- Department access management
- Shared folder permissions
- Group Policy targeting
- Administrative delegation
- Access governance
- Identity lifecycle management
- Audit readiness
- Least privilege enforcement

--------------------------------------------------

EXAMPLE AUTOMATION WORKFLOW

This CSV is typically used with:
- 04-assign-group-membership.ps1
- 09-run-full-lab-build.ps1

The scripts will:
1. Read the CSV
2. Locate user accounts
3. Locate security groups
4. Add users to the correct groups
5. Validate successful assignments
6. Log membership actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Import-Csv ".\04-group-membership.csv"

Example automation:

$memberships = Import-Csv ".\04-group-membership.csv"

foreach ($membership in $memberships) {
    Write-Host "Adding $($membership.Username) to $($membership.GroupName)"
}

--------------------------------------------------

ACCESS CONTROL EXAMPLE

Example workflow:

User:
helpdesk.tech01

Assigned To:
GG-Hawks-Helpdesk

Inherited Permissions:
- Helpdesk shared drive access
- Password reset delegation
- Limited workstation administration
- Support ticket resources

This demonstrates:
- Indirect access assignment
- Centralized permission management
- Scalable IAM architecture

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This file demonstrates:
- Role-Based Access Control (RBAC)
- Group-based access management
- Identity governance
- Enterprise onboarding workflows
- Least privilege access
- Department-based segmentation
- Automated identity provisioning
- Access standardization

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Group membership tabs
- Users assigned to groups
- Security group properties
- Department-based memberships
- RBAC structure
- Nested group relationships

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- No direct permission assignments
- Least privilege access
- Centralized access management
- Department segmentation
- Administrative role separation
- Standardized group assignment workflows

Best Practice:
Always assign permissions to groups, not users.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated group membership assignments:
- Simplifies auditing
- Reduces configuration errors
- Improves scalability
- Standardizes onboarding
- Accelerates offboarding
- Enhances security governance

--------------------------------------------------

RELATED FILES

01-ou-structure.csv
- Organizational Unit hierarchy

02-users.csv
- User account creation

03-groups.csv
- Security group creation

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
- Group-Based Access Control
- Identity Governance
- IAM Automation
- PowerShell Scripting
- Enterprise Access Management
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.