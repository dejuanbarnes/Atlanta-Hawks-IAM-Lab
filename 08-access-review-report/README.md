# README.md — 08-access-review-report.ps1

## Overview
This PowerShell script automates access review reporting in the Atlanta Hawks IAM Lab environment built in Active Directory.

The script is designed to simulate enterprise Identity Governance and Administration (IGA) workflows by auditing user access, group memberships, and permission assignments across the environment.

This script demonstrates how IAM and security teams perform periodic access reviews to validate that users only maintain the access required for their job responsibilities in accordance with least privilege and compliance standards.

This script supports:
- Automated access review reporting
- Identity governance workflows
- RBAC auditing
- Group membership auditing
- Compliance reporting
- Access certification preparation
- Hybrid identity readiness for Microsoft Entra ID

--------------------------------------------------

FILE NAME
08-access-review-report.ps1

--------------------------------------------------

PURPOSE

The purpose of this script is to:
- Audit user access permissions
- Review security group memberships
- Identify excessive privileges
- Support compliance workflows
- Simulate enterprise access certification reviews
- Improve IAM visibility
- Strengthen governance controls

--------------------------------------------------

SCRIPT FUNCTIONS

This script performs tasks such as:
- Enumerating Active Directory users
- Reviewing security group memberships
- Auditing RBAC assignments
- Exporting access review reports
- Identifying privileged accounts
- Generating audit logs
- Supporting governance workflows

--------------------------------------------------

ACCESS REVIEW OVERVIEW

This script simulates enterprise governance processes such as:
- Quarterly access reviews
- User access certifications
- Privileged access audits
- Compliance assessments
- Security governance reporting
- Least privilege validation
- Identity risk analysis

--------------------------------------------------

WHY ACCESS REVIEWS MATTER

Access reviews are critical because they help organizations:
- Detect excessive permissions
- Identify orphaned accounts
- Reduce insider threat risk
- Maintain compliance
- Enforce least privilege access
- Improve security posture
- Strengthen identity governance

Without regular access reviews:
- Permission sprawl increases
- Unauthorized access may go unnoticed
- Compliance risks grow

--------------------------------------------------

EXAMPLE REVIEW OUTPUT

Examples reviewed by this script:
- User account memberships
- Administrative group assignments
- Shared folder access groups
- Department-based RBAC assignments
- Privileged accounts
- Nested group relationships

--------------------------------------------------

EXAMPLE ACCESS REVIEW WORKFLOW

Example process:

User:
helpdesk.tech01

Groups Identified:
- GG-Hawks-Helpdesk
- DL-Hawks-Support-Access

Permissions Reviewed:
- Helpdesk resource access
- Shared drive permissions
- Administrative tool access

Review Result:
Access validated against assigned role responsibilities.

--------------------------------------------------

EXAMPLE SCRIPT WORKFLOW

The script typically performs:

1. Enumerate Active Directory users
2. Gather group membership data
3. Review nested RBAC relationships
4. Audit privileged access
5. Generate access review reports
6. Export audit results
7. Log governance findings

--------------------------------------------------

EXAMPLE POWERSHELL USAGE

Run the script:

.\08-access-review-report.ps1

Example export workflow:

Get-ADUser -Filter * | Export-Csv ".\AccessReviewReport.csv"

--------------------------------------------------

EXPECTED OUTPUT

Successful execution should result in:
- Access review reports generated
- User memberships documented
- Privileged access identified
- RBAC assignments reviewed
- Governance audit completed

Example result:
Access Review Completed
Report Exported: AccessReviewReport.csv
Privileged Accounts Identified: 3

--------------------------------------------------

EXAMPLE USE CASES

This script supports:
- Identity governance
- Compliance reporting
- Privileged access reviews
- Enterprise auditing
- Access certification workflows
- Least privilege enforcement
- Security governance
- Hybrid identity synchronization preparation

--------------------------------------------------

IAM CONCEPTS DEMONSTRATED

This script demonstrates:
- Identity Governance and Administration (IGA)
- Access review processes
- RBAC auditing
- Privileged access management
- Compliance reporting
- Enterprise governance workflows
- Security auditing
- Hybrid identity readiness

--------------------------------------------------

RECOMMENDED SCREENSHOTS FOR PORTFOLIO

Capture screenshots of:
- Access review reports
- Group membership exports
- Privileged account findings
- PowerShell reporting output
- CSV audit exports
- RBAC review results
- Governance reporting logs

--------------------------------------------------

SECURITY BEST PRACTICES

This lab demonstrates:
- Regular access reviews
- Least privilege validation
- Privileged account auditing
- Centralized governance reporting
- RBAC verification
- Identity risk reduction

Best Practice:
Conduct recurring access reviews to ensure users only retain the access required for their current role.

--------------------------------------------------

ENTERPRISE IAM BENEFITS

Using automated access review reporting:
- Improves compliance readiness
- Enhances audit visibility
- Reduces permission sprawl
- Strengthens governance controls
- Simplifies auditing
- Improves security posture
- Supports enterprise IAM maturity

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

09-run-full-lab-build.ps1
- Full enterprise deployment

--------------------------------------------------

SKILLS DEMONSTRATED

- Active Directory Administration
- Identity Governance
- Access Review Reporting
- RBAC Auditing
- Compliance Reporting
- PowerShell Automation
- Enterprise Security Operations
- Privileged Access Review
- Hybrid Identity Readiness

--------------------------------------------------

AUTHOR

Atlanta Hawks IAM Lab
Built for IAM, Active Directory, and Microsoft Entra ID portfolio development.