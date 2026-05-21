# README.md — 07-offboard-users.ps1

## Overview
This PowerShell script automates the user offboarding and deprovisioning process in the Atlanta Hawks IAM Lab environment built in Active Directory.

The script reads offboarding data from a CSV file and performs enterprise-style identity lifecycle management tasks such as disabling accounts, removing group memberships, revoking access, and moving accounts into a disabled users Organizational Unit.

This script simulates real-world IAM security operations used by enterprise organizations to protect systems and enforce compliance when employees leave the company or no longer require access.

This script supports:
- Automated user offboarding
- Identity lifecycle management
- Access revocation
- Security governance
- Group membership cleanup
- Enterprise IAM workflows
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
07-offboard-users.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Automate user deprovisioning
- Disable user accounts securely
- Remove group memberships
- Revoke resource access
- Support compliance workflows
- Reduce orphaned account risk
- Standardize enterprise offboarding operations

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Reading offboarding data from CSV
- Locating Active Directory user accounts
- Disabling accounts
- Removing group memberships
- Revoking administrative access
- Moving accounts to Disabled Users OU
- Logging offboarding actions

--------------------------------------------------

CSV DEPENDENCY

This script uses:
07-offboard.csv

The CSV defines:
- Usernames
- Offboarding actions
- Account disable operations
- Group membership removal settings
- OU relocation targets

--------------------------------------------------

OFFBOARDING WORKFLOW OVERVIEW

This script simulates enterprise offboarding workflows triggered by:
- Employee resignation
- Employee termination
- Contract expiration
- Security investigations
- Temporary account cleanup
- Administrative access revocation

--------------------------------------------------

WHY OFFBOARDING IS CRITICAL

Improper offboarding can lead to:
- Unauthorized access
- Orphaned accounts
- Insider threats
- Compliance violations
- Privilege misuse
- Security incidents

Enterprise IAM teams must ensure access is revoked immediately when users leave the organization.

--------------------------------------------------

EXAMPLE OFFBOARDING ACTIONS

Examples performed by this script:
- Disable Active Directory account
- Remove group memberships
- Remove privileged access
- Move user to Disabled Users OU
- Revoke shared resource access
- Prepare account for archival

--------------------------------------------------

ACCESS REVOCATION EXAMPLE

Example workflow:

User:
helpdesk.tech01

Actions Performed:
- Account Disabled
- Removed from GG-Hawks-Helpdesk
- Privileged access revoked
- Moved to Disabled Users OU

Result:
User can no longer authenticate or access company resources.

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Import CSV data
2. Validate offboarding entries
3. Locate Active Directory accounts
4. Disable user accounts
5. Remove group memberships
6. Move accounts to Disabled Users OU
7. Validate access revocation
8. Log offboarding actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\07-offboard-users.ps1

Example CSV import:

$offboard = Import-Csv ".\07-offboard.csv"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Accounts disabled
- Group memberships removed
- Access revoked
- Accounts moved to Disabled Users OU
- Identity cleanup completed

Example result:
Disabled User: helpdesk.tech01
Removed Memberships: GG-Hawks-Helpdesk
Moved User to Disabled Users OU

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- HR-driven offboarding
- Security compliance workflows
- Identity governance
- Enterprise access revocation
- Administrative cleanup
- Insider threat mitigation
- Lifecycle management automation
- Hybrid identity synchronization preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Identity lifecycle management
- Automated deprovisioning
- Enterprise offboarding workflows
- Access revocation
- Least privilege enforcement
- Security governance
- Administrative cleanup
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Disabled user accounts
- Removed group memberships
- Disabled Users OU
- PowerShell offboarding output
- User account status changes
- Administrative access removal
- Successful offboarding logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Immediate access revocation
- Group membership cleanup
- Privileged access removal
- Administrative account isolation
- Centralized offboarding workflows
- Least privilege enforcement

Best Practice:
Disable accounts immediately before performing additional cleanup and access removal actions.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated offboarding:
- Improves security posture
- Reduces human error
- Accelerates deprovisioning
- Simplifies auditing
- Enhances compliance readiness
- Supports enterprise governance
- Reduces insider threat risk

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

06-create-shared-folders.ps1
- Shared folder automation

07-offboard.csv
- Offboarding definitions

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Identity Lifecycle Management
- User Offboarding Automation
- Access Revocation
- IAM Automation
- PowerShell Scripting
- Enterprise Security Operations
- Identity Governance
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.