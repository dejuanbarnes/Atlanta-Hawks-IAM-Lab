# README.md — 99-reset-hawks-iam-lab.csv

## Overview
This CSV file is used to reset, clean up, and rebuild the Atlanta Hawks IAM Lab environment built in Active Directory.

The file supports automated lab teardown operations by identifying objects, resources, and configurations that should be removed or reset before rebuilding the environment.

This reset process is critical for:
- Lab troubleshooting
- Environment rebuilding
- Automation testing
- Demonstrating repeatable deployments
- Practicing enterprise disaster recovery and recovery workflows

This file supports:
- Automated lab cleanup
- User removal
- Group removal
- OU cleanup
- Shared folder cleanup
- RBAC reset operations
- Full IAM lab redeployment preparation

--------------------------------------------------

FILE NAME
99-reset-hawks-iam-lab.csv

--------------------------------------------------

PURPOSE

The purpose of this file is to:
- Reset the IAM lab environment safely
- Remove test identities
- Clean up security groups
- Remove shared resources
- Prepare for a fresh deployment
- Simulate enterprise rebuild procedures
- Support repeatable infrastructure automation

--------------------------------------------------

CSV STRUCTURE

Column Name: ObjectType
Description: Type of object being removed or reset

Column Name: ObjectName
Description: Name of the object targeted for removal

Column Name: Action
Description: Cleanup or reset action being performed

--------------------------------------------------

RESET PROCESS OVERVIEW

This file simulates enterprise cleanup operations such as:
- Removing test users
- Deleting security groups
- Cleaning shared folders
- Resetting RBAC assignments
- Rebuilding OU structures
- Preparing disaster recovery scenarios
- Supporting lab redeployment testing

--------------------------------------------------

EXAMPLE RESET ACTIONS

Examples included in this lab:
- Remove Active Directory users
- Delete security groups
- Remove nested group memberships
- Delete shared folders
- Reset NTFS permissions
- Remove disabled accounts
- Rebuild organizational structures

--------------------------------------------------

EXAMPLE USE CASES

This CSV supports:
- Lab rebuilds
- Automation testing
- PowerShell validation
- Disaster recovery simulations
- IAM deployment practice
- Troubleshooting broken environments
- Enterprise rebuild workflows
- Repeatable infrastructure testing

--------------------------------------------------

EXAMPLE AUTOMATION WORKFLOW

This CSV is typically used with:
- 99-reset-hawks-iam-lab.ps1
- 09-run-full-lab-build.ps1

The scripts will:
1. Read the CSV
2. Identify targeted objects
3. Remove or reset resources
4. Clean up permissions
5. Validate successful removal
6. Prepare the environment for redeployment
7. Log cleanup actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Import-Csv ".\99-reset-hawks-iam-lab.csv"

Example automation:

$reset = Import-Csv ".\99-reset-hawks-iam-lab.csv"

foreach ($item in $reset) {
    Write-Host "Resetting Object: $($item.ObjectName)"
}

--------------------------------------------------

RESET WORKFLOW EXAMPLE

Example process:

Target:
GG-Hawks-IT

Action:
Remove Security Group

Result:
- Group deleted
- Nested memberships removed
- Permissions cleaned up
- Environment prepared for rebuild

--------------------------------------------------

WHY RESET AUTOMATION MATTERS

Benefits of automated reset procedures:
- Faster lab recovery
- Consistent rebuilds
- Reduced human error
- Improved troubleshooting
- Repeatable testing environments
- Better automation validation
- Enterprise deployment simulation

Without automated cleanup:
- Lab environments become inconsistent
- Permission issues accumulate
- Testing becomes unreliable

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This file demonstrates:
- Identity lifecycle cleanup
- Infrastructure automation
- Disaster recovery preparation
- Repeatable deployment workflows
- Enterprise rebuild operations
- Access cleanup procedures
- PowerShell-driven administration
- IAM operational maintenance

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Reset PowerShell execution
- Deleted user accounts
- Removed security groups
- Shared folder cleanup
- Rebuilt OU structure
- Fresh lab deployment
- Automation logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Controlled cleanup procedures
- Permission removal validation
- Standardized reset operations
- Automated infrastructure maintenance
- Environment consistency validation
- Safe identity cleanup practices

Best Practice:
Always validate object removal before rebuilding production-like environments.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated reset workflows:
- Simplifies testing
- Improves deployment consistency
- Accelerates troubleshooting
- Enhances automation reliability
- Supports disaster recovery testing
- Reduces administrative overhead
- Improves infrastructure governance

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

07-offboard.csv
- User offboarding automation

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Infrastructure Automation
- IAM Lifecycle Management
- Disaster Recovery Preparation
- PowerShell Scripting
- RBAC Cleanup Operations
- Enterprise Environment Maintenance
- Automation Validation
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.