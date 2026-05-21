# README.md — 09-run-full-lab-build.ps1

## Overview
This PowerShell script serves as the master deployment orchestrator for the Atlanta Hawks IAM Lab environment built in Active Directory.

The script automates the complete deployment of the enterprise IAM lab by sequentially executing all provisioning, RBAC, access control, and governance scripts required to build the environment from start to finish.

This script simulates enterprise infrastructure deployment automation used by IAM, Identity Governance, and IT Operations teams to standardize large-scale identity environments.

This script supports:
- Full IAM environment deployment
- Enterprise automation orchestration
- RBAC deployment
- Identity lifecycle automation
- Shared resource provisioning
- Governance workflow integration
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
09-run-full-lab-build.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Automate the full IAM lab deployment
- Execute all provisioning scripts sequentially
- Standardize infrastructure deployment
- Simplify environment setup
- Reduce deployment errors
- Support repeatable enterprise workflows
- Simulate enterprise IAM orchestration

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Running setup scripts
- Creating OU structures
- Creating security groups
- Creating user accounts
- Assigning RBAC memberships
- Configuring nested groups
- Creating shared folders
- Running governance workflows
- Logging deployment progress

--------------------------------------------------

FULL DEPLOYMENT WORKFLOW

This script automates the following sequence:

1. Environment Setup
2. OU Deployment
3. Security Group Deployment
4. User Provisioning
5. Group Membership Assignment
6. RBAC Group Nesting
7. Shared Folder Deployment
8. Access Governance Reporting
9. Offboarding Workflow Validation

--------------------------------------------------

SCRIPTS EXECUTED

This script typically executes:

00-setup-folder-and-execution-policy.ps1
01-create-ou-structure.ps1
02-create-security-groups.ps1
03-create-users.ps1
04-assign-group-membership.ps1
05-create-group-nesting.ps1
06-create-shared-folders.ps1
07-offboard-users.ps1
08-access-review-report.ps1

--------------------------------------------------

ENTERPRISE IAM DEPLOYMENT MODEL

This script demonstrates enterprise automation principles:

Identity Source
→ Organizational Structure
→ Security Groups
→ User Provisioning
→ RBAC Assignment
→ Permission Inheritance
→ Resource Access
→ Governance Reporting

This reflects real-world IAM deployment architecture.

--------------------------------------------------

WHY MASTER AUTOMATION MATTERS

Enterprise organizations use orchestration scripts because they:
- Standardize deployments
- Reduce manual configuration errors
- Improve scalability
- Accelerate onboarding
- Simplify infrastructure rebuilding
- Improve governance consistency
- Enable repeatable deployments

Without orchestration:
- Deployments become inconsistent
- Human error increases
- Troubleshooting becomes more difficult

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Validate environment readiness
2. Execute setup scripts
3. Run infrastructure deployment scripts
4. Build RBAC architecture
5. Configure resource access
6. Execute governance workflows
7. Generate audit/reporting outputs
8. Log deployment completion

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\09-run-full-lab-build.ps1

Example execution structure:

Write-Host "Starting Atlanta Hawks IAM Lab Deployment..."

.\01-create-ou-structure.ps1
.\02-create-security-groups.ps1
.\03-create-users.ps1

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Fully deployed IAM environment
- OU hierarchy created
- Security groups deployed
- User accounts provisioned
- RBAC structure implemented
- Shared resources configured
- Governance workflows completed

Example result:
OU Deployment Complete
Security Group Deployment Complete
User Provisioning Complete
RBAC Configuration Complete
Lab Deployment Successful

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Full IAM lab deployment
- Enterprise automation testing
- Infrastructure orchestration
- Disaster recovery simulations
- RBAC deployment
- Identity governance workflows
- Repeatable environment provisioning
- Hybrid identity preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Enterprise IAM orchestration
- Infrastructure automation
- RBAC deployment workflows
- Identity lifecycle automation
- Governance integration
- PowerShell orchestration
- Enterprise deployment management
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Full PowerShell deployment output
- OU hierarchy deployment
- Security group creation
- User provisioning results
- Shared folder creation
- Access governance reports
- Successful deployment completion logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Standardized deployment workflows
- Centralized automation control
- Repeatable infrastructure deployment
- Governance validation
- Least privilege architecture
- Enterprise IAM operational practices

Best Practice:
Use centralized orchestration scripts to standardize IAM deployments and reduce operational inconsistencies.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using full deployment orchestration:
- Improves consistency
- Reduces deployment errors
- Accelerates environment setup
- Enhances governance readiness
- Simplifies troubleshooting
- Supports enterprise scalability
- Improves operational efficiency

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

99-reset-hawks-iam-lab.csv
- Environment reset definitions

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Enterprise IAM Automation
- Infrastructure Orchestration
- RBAC Deployment
- Identity Lifecycle Management
- PowerShell Scripting
- Identity Governance
- Enterprise Access Control
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.