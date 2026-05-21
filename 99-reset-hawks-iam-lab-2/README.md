# README.md — 99-reset-hawks-iam-lab.ps1

## Overview
This PowerShell script automates the teardown, cleanup, and reset process for the Atlanta Hawks IAM Lab environment built in Active Directory.

The script is designed to remove previously deployed IAM objects and restore the environment to a clean state so the lab can be rebuilt, tested, or redeployed consistently.

This script simulates enterprise infrastructure reset and disaster recovery workflows used by IAM and IT Operations teams to maintain clean testing environments and validate deployment automation.

This script supports:
- Automated environment reset
- Active Directory cleanup
- RBAC removal
- Shared resource cleanup
- Identity lifecycle cleanup
- Disaster recovery simulations
- Repeatable IAM deployment testing

--------------------------------------------------

FILE NAME
99-reset-hawks-iam-lab.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Reset the IAM lab environment
- Remove deployed test identities
- Delete security groups
- Remove shared resources
- Clean RBAC configurations
- Prepare for fresh redeployment
- Simulate enterprise disaster recovery operations

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Removing Active Directory users
- Removing security groups
- Removing nested group memberships
- Deleting Organizational Units
- Removing shared folders
- Cleaning NTFS permissions
- Resetting RBAC structures
- Logging cleanup operations

--------------------------------------------------

RESET WORKFLOW OVERVIEW

This script simulates enterprise cleanup operations such as:
- Lab environment rebuilds
- Disaster recovery preparation
- Automation validation
- Test environment cleanup
- RBAC structure resets
- Identity lifecycle cleanup
- Infrastructure redeployment preparation

--------------------------------------------------

WHY RESET AUTOMATION MATTERS

Automated reset workflows are important because they:
- Standardize cleanup operations
- Reduce manual errors
- Improve testing consistency
- Simplify troubleshooting
- Accelerate environment rebuilding
- Support repeatable deployments
- Improve automation reliability

Without automated resets:
- Environments become inconsistent
- Permission issues accumulate
- Troubleshooting becomes more difficult

--------------------------------------------------

EXAMPLE RESET ACTIONS

Examples performed by this script:
- Delete test user accounts
- Remove security groups
- Remove nested RBAC structures
- Delete shared folders
- Remove SMB shares
- Reset permission inheritance
- Clean Organizational Units

--------------------------------------------------

EXAMPLE RESET WORKFLOW

Example process:

Target:
GG-Hawks-IT

Action:
Remove Security Group

Result:
- Group deleted
- Nested memberships removed
- Permissions cleaned
- Environment prepared for rebuild

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Validate environment state
2. Enumerate deployed IAM objects
3. Remove users and groups
4. Remove nested memberships
5. Delete shared folders/shares
6. Remove Organizational Units
7. Validate cleanup completion
8. Log reset operations

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\99-reset-hawks-iam-lab.ps1

Example cleanup command:

Remove-ADUser -Identity "trae.young"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- User accounts removed
- Security groups deleted
- Shared resources removed
- OU hierarchy cleaned
- RBAC architecture reset
- Environment ready for redeployment

Example result:
User Removed: trae.young
Security Group Removed: GG-Hawks-IT
Environment Reset Complete

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Lab rebuilds
- Disaster recovery simulations
- Infrastructure testing
- Automation validation
- Troubleshooting broken deployments
- Repeatable environment provisioning
- RBAC cleanup
- Governance workflow testing

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Identity lifecycle cleanup
- Infrastructure teardown automation
- RBAC cleanup operations
- Disaster recovery preparation
- Enterprise environment maintenance
- IAM operational management
- Automation validation
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- PowerShell cleanup output
- Deleted Active Directory objects
- Removed security groups
- Shared folder cleanup
- OU deletion results
- Environment reset completion logs
- Fresh redeployment preparation

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Controlled object removal
- Centralized cleanup workflows
- Permission cleanup validation
- Repeatable infrastructure maintenance
- Administrative change control
- Secure IAM teardown procedures

Best Practice:
Always validate object removal and permission cleanup before redeploying enterprise environments.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated reset workflows:
- Improves deployment consistency
- Simplifies testing
- Accelerates troubleshooting
- Reduces human error
- Supports disaster recovery validation
- Improves operational efficiency
- Strengthens infrastructure governance

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

07-offboard-users.ps1
- User offboarding automation

08-access-review-report.ps1
- Identity governance reporting

09-run-full-lab-build.ps1
- Full enterprise deployment orchestration

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Infrastructure Automation
- IAM Lifecycle Management
- Disaster Recovery Preparation
- RBAC Cleanup Operations
- PowerShell Scripting
- Enterprise Environment Maintenance
- Automation Validation
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.