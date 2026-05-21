# README.md — 07-offboard.csv

## Overview
This CSV file defines user accounts targeted for offboarding and deprovisioning in the Atlanta Hawks IAM Lab environment built in Active Directory.

The file is used to automate the identity lifecycle management process for employees who leave the organization or no longer require access to company resources.

This lab demonstrates how enterprise IAM teams securely handle account deactivation, access removal, and identity cleanup operations following security and compliance best practices.

This file supports:
- Automated user offboarding
- Account deactivation
- Access revocation
- Group membership cleanup
- Identity lifecycle management
- Security governance
- Enterprise IAM simulations
- Hybrid identity preparation for Microsoft Entra ID

--------------------------------------------------

FILE NAME
07-offboard.csv

--------------------------------------------------

PURPOSE

The purpose of this file is to:
- Automate identity offboarding workflows
- Disable user access securely
- Remove access permissions
- Simulate HR termination processes
- Enforce security compliance
- Reduce orphaned account risk
- Support enterprise identity governance

--------------------------------------------------

CSV STRUCTURE

Column Name: Username
Description: User account being offboarded

Column Name: Action
Description: Offboarding action being performed

Column Name: DisableAccount
Description: Determines whether the account will be disabled

Column Name: RemoveGroups
Description: Determines whether group memberships will be removed

Column Name: MoveToOU
Description: Organizational Unit where disabled accounts will be moved

--------------------------------------------------

OFFBOARDING PROCESS OVERVIEW

This lab simulates enterprise deprovisioning workflows such as:
- Employee termination
- Employee resignation
- Contract expiration
- Privileged access removal
- Temporary account cleanup
- Security incident response

--------------------------------------------------

EXAMPLE OFFBOARDING ACTIONS

Examples included in this lab:
- Disable user account
- Remove group memberships
- Move user to Disabled Users OU
- Revoke administrative access
- Remove shared folder access
- Prepare account for archival

--------------------------------------------------

EXAMPLE USE CASES

This CSV supports:
- HR-driven offboarding
- Security compliance workflows
- Access revocation
- Identity governance
- Audit preparation
- Least privilege enforcement
- Enterprise lifecycle management
- Insider threat mitigation

--------------------------------------------------

EXAMPLE AUTOMATION WORKFLOW

This CSV is typically used with:
- 07-offboard-users.ps1
- 09-run-full-lab-build.ps1

The scripts will:
1. Read the CSV
2. Locate target user accounts
3. Disable accounts
4. Remove group memberships
5. Move accounts to Disabled Users OU
6. Log deprovisioning actions
7. Validate access removal

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Import-Csv ".\07-offboard.csv"

Example automation:

$offboard = Import-Csv ".\07-offboard.csv"

foreach ($user in $offboard) {
    Write-Host "Offboarding User: $($user.Username)"
}

--------------------------------------------------

OFFBOARDING SECURITY MODEL

Example workflow:

User:
helpdesk.tech01

Actions Performed:
- Account Disabled
- Group Memberships Removed
- Administrative Access Revoked
- Moved to Disabled Users OU

Result:
User can no longer authenticate or access company resources.

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This file demonstrates:
- Identity lifecycle management
- Automated deprovisioning
- Access revocation
- Security governance
- Least privilege enforcement
- HR-driven IAM workflows
- Enterprise offboarding standards
- Identity risk reduction

--------------------------------------------------

WHY OFFBOARDING IS CRITICAL

Improper offboarding can result in:
- Unauthorized access
- Orphaned accounts
- Compliance violations
- Insider threats
- Privilege misuse
- Security incidents

Proper identity deprovisioning is a critical IAM responsibility.

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Disabled user accounts
- Removed group memberships
- Disabled Users OU
- Offboarding PowerShell execution
- Account status changes
- Security group cleanup
- Identity lifecycle workflow

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Immediate access revocation
- Administrative access removal
- Group membership cleanup
- Account archival procedures
- Centralized offboarding workflows
- Least privilege enforcement

Best Practice:
Disable accounts immediately before performing additional cleanup actions.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated offboarding:
- Improves security posture
- Reduces human error
- Accelerates deprovisioning
- Enhances compliance readiness
- Simplifies auditing
- Standardizes IAM operations
- Reduces insider threat risk

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

06-shares.csv
- Shared folder permissions

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Identity Lifecycle Management
- User Offboarding Automation
- Access Revocation
- Enterprise IAM Operations
- Security Governance
- PowerShell Automation
- RBAC Enforcement
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.