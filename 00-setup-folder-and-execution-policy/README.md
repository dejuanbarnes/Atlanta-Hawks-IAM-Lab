# README.md — 00-setup-folder-and-execution-policy.ps1

## Overview
This PowerShell script prepares the Atlanta Hawks IAM Lab environment for deployment by creating the required folder structure and configuring the PowerShell execution policy needed to run automation scripts safely.

This setup script acts as the foundation for the entire IAM lab environment and ensures the system is properly configured before deploying Active Directory objects, users, groups, RBAC permissions, and shared resources.

This script supports:
- IAM lab environment preparation
- PowerShell execution policy configuration
- Folder structure automation
- Standardized deployment setup
- Automation readiness
- Enterprise scripting workflows

--------------------------------------------------

FILE NAME
00-setup-folder-and-execution-policy.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Create the required lab directory structure
- Prepare script storage locations
- Configure PowerShell execution settings
- Enable automation functionality
- Standardize the IAM lab environment
- Ensure deployment consistency
- Prepare the environment for future scripts

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Creating the Hawks IAM Lab folder
- Creating script subdirectories
- Creating documentation folders
- Creating CSV storage locations
- Setting PowerShell execution policy
- Validating folder creation
- Preparing the workstation/server for automation

--------------------------------------------------

EXAMPLE DIRECTORY STRUCTURE

Example folders created:

C:\Hawks-IAM-Lab\
│
├── Scripts\
├── CSV\
├── Logs\
├── Screenshots\
├── Documentation\
└── Backups\

--------------------------------------------------

POWERSHELL EXECUTION POLICY

This script typically configures:

RemoteSigned

This allows:
- Local PowerShell scripts to run
- Signed remote scripts to execute safely
- IAM automation scripts to function properly

Example command:

Set-ExecutionPolicy RemoteSigned -Scope LocalMachine

--------------------------------------------------

WHY EXECUTION POLICY MATTERS

Without configuring the execution policy:
- PowerShell scripts may fail to run
- Automation deployment will be blocked
- IAM provisioning scripts cannot execute
- Lab deployment becomes inconsistent

This setup is critical for automation readiness.

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Create lab directories
2. Validate folder structure
3. Configure execution policy
4. Verify PowerShell settings
5. Prepare the environment for deployment
6. Log setup actions

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\00-setup-folder-and-execution-policy.ps1

Verify execution policy:

Get-ExecutionPolicy -List

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Folder structure creation
- Execution policy configured
- PowerShell automation enabled
- Lab deployment readiness confirmed

Example result:

LocalMachine = RemoteSigned

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Initial IAM lab deployment
- Automation preparation
- PowerShell environment setup
- Infrastructure standardization
- Repeatable deployment workflows
- Enterprise scripting practices
- Lab rebuild preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Infrastructure preparation
- Automation standardization
- PowerShell administration
- Environment configuration management
- Enterprise deployment readiness
- Repeatable setup workflows
- IAM lab orchestration

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- PowerShell execution policy output
- Folder structure creation
- Script execution results
- PowerShell terminal setup
- Created IAM lab directories
- Successful automation preparation

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Controlled execution policy configuration
- Standardized deployment setup
- Structured automation environments
- Repeatable infrastructure preparation
- Secure script execution practices

Best Practice:
Use the least permissive execution policy required for the environment.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using standardized setup scripts:
- Improves deployment consistency
- Reduces configuration errors
- Accelerates environment preparation
- Simplifies troubleshooting
- Standardizes automation workflows
- Enhances operational efficiency

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

- PowerShell Administration
- Infrastructure Automation
- Environment Configuration
- IAM Deployment Preparation
- Automation Readiness
- Enterprise Scripting Practices
- Active Directory Lab Setup
- Identity Infrastructure Planning

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.