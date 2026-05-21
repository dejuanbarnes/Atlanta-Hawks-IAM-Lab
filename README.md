# Atlanta Hawks IAM Lab

Enterprise-style Identity and Access Management (IAM) lab built with Active Directory, PowerShell automation, RBAC, AGDLP, shared resource management, identity governance, and lifecycle automation.

This project simulates how enterprise IAM and infrastructure teams manage:
- User provisioning
- Role-Based Access Control (RBAC)
- Group nesting
- Shared resource permissions
- Access governance
- Offboarding workflows
- Group Policy security controls
- Enterprise automation orchestration

The lab was intentionally designed to mirror a real corporate IAM environment rather than a basic Active Directory practice lab.

---

# Project Goals

The goal of this lab was to build a realistic enterprise IAM environment that demonstrates hands-on experience with:

- Identity lifecycle management
- Enterprise Active Directory administration
- RBAC implementation
- AGDLP access architecture
- Group Policy management
- Shared folder administration
- Least privilege enforcement
- PowerShell automation
- Governance reporting
- Offboarding and deprovisioning
- Hybrid identity readiness for Microsoft Entra ID

---

# Technologies Used

## Infrastructure
- Windows Server
- VMware Workstation
- Windows 10/11 Client VM
- SMB Shares
- NTFS Permissions

## Identity & Access Management
- Active Directory
- RBAC (Role-Based Access Control)
- AGDLP Methodology
- Least Privilege Access
- Privileged Account Separation
- Identity Lifecycle Management
- Access Governance

## Automation
- PowerShell
- CSV-Driven Provisioning
- Infrastructure Automation
- Deployment Orchestration

## Security & Governance
- Group Policy
- Access Reviews
- Audit Policies
- Offboarding Workflows
- Governance Reporting

---

# Enterprise IAM Architecture

This lab follows a real-world IAM deployment model:

```text
Identity Source
→ Organizational Units
→ Security Groups
→ User Provisioning
→ Group Membership Assignment
→ Group Nesting
→ Shared Resource Access
→ Governance Reporting
→ Offboarding & Cleanup
```

The environment demonstrates enterprise IAM concepts such as:
- Department segmentation
- Administrative isolation
- Privileged access separation
- Centralized access management
- Identity governance workflows

---

# Environment Overview

## Domain Infrastructure

| Component | Value |
|---|---|
| Domain Name | hawks.local |
| Domain Controller | HAWKS-DC01 |
| Client Workstation | HAWKS-WS01 |

The environment was deployed inside VMware using:
- A Windows Server domain controller
- A domain-joined Windows client
- Static IP configuration
- Internal DNS through Active Directory Domain Services (AD DS)

---

# Organizational Structure

The lab creates a fully structured enterprise OU hierarchy:

```text
Hawks
│
├── Players
├── Coaches
├── FrontOffice
├── Finance
├── Medical
├── Marketing
├── IT
├── Helpdesk
├── Privileged Accounts
├── Disabled Users
├── Groups
└── Shared Resources
```

This structure supports:
- Department separation
- Delegated administration
- Group Policy targeting
- Privileged identity isolation
- Lifecycle management workflows

---

# RBAC & AGDLP Implementation

This project follows enterprise Role-Based Access Control (RBAC) architecture:

```text
Users → Global Groups → Domain Local Groups → Permissions
```

This is commonly referred to as:

```text
AGDLP
Accounts → Global → Domain Local → Permissions
```

Example:

```text
helpdesk.tech01
→ GG-Hawks-Helpdesk
→ DL-Hawks-Support-Access
→ Helpdesk Shared Resources
```

This architecture improves:
- Scalability
- Auditability
- Least privilege enforcement
- Administrative efficiency
- Governance visibility

---

# CSV-Driven Identity Automation

The entire environment is deployed using CSV-driven automation.

## CSV Files

| File | Purpose |
|---|---|
| 01-ou-structure.csv | OU hierarchy definitions |
| 02-users.csv | User provisioning data |
| 03-groups.csv | Security group definitions |
| 04-group-membership.csv | User-to-group assignments |
| 05-group-nesting.csv | AGDLP nesting structure |
| 06-shares.csv | Shared resource definitions |
| 07-offboard.csv | Offboarding workflows |
| 99-reset-hawks-iam-lab.csv | Environment reset definitions |

The lab simulates how enterprise HR systems feed identity data into IAM systems for automated provisioning.

---

# PowerShell Automation

The lab uses PowerShell automation to orchestrate the full environment deployment.

## Automation Scripts

| Script | Purpose |
|---|---|
| 00-setup-folder-and-execution-policy.ps1 | Environment setup |
| 01-create-ou-structure.ps1 | OU deployment |
| 02-create-security-groups.ps1 | Security group creation |
| 03-create-users.ps1 | User provisioning |
| 04-assign-group-membership.ps1 | RBAC assignment |
| 05-create-group-nesting.ps1 | AGDLP nesting |
| 06-create-shared-folders.ps1 | Shared folder deployment |
| 07-offboard-users.ps1 | Offboarding automation |
| 08-access-review-report.ps1 | Governance reporting |
| 09-run-full-lab-build.ps1 | Full deployment orchestration |
| 99-reset-hawks-iam-lab.ps1 | Environment teardown/reset |

The lab can be deployed almost entirely through automation using:

```powershell
.\09-run-full-lab-build.ps1
```

---

# Shared Resource Access Control

The environment deploys enterprise-style shared resources using:
- SMB Shares
- NTFS Permissions
- Domain Local Groups
- RBAC-based access assignments

## Example Shares

- PlayersShare
- MedicalShare
- FinanceShare
- ITShare
- HelpdeskShare
- AdminTools

Permissions are assigned to groups rather than users to enforce centralized access management and least privilege access.

---

# Group Policy Security Controls

The lab includes Group Policy configurations such as:
- Password policies
- Account lockout policies
- Audit policies
- User restrictions
- Security event logging

Example GPOs:
- GPO-Hawks-Password-Policy
- GPO-Hawks-Audit-Identity-Events
- GPO-Players-Restrict-ControlPanel

This demonstrates how IAM integrates with enterprise endpoint security and governance.

---

# Access Testing & Validation

The environment includes real access validation using the domain-joined workstation HAWKS-WS01.

Access scenarios tested:
- Allowed access to department shares
- Denied access to unauthorized resources
- Temporary role changes
- Token refresh validation
- RBAC enforcement

Examples:
- Players can access PlayersShare
- Players are denied access to MedicalShare
- Medical staff can access MedicalShare
- Finance access remains restricted

This validates real-world least privilege enforcement.

---

# Identity Governance & Access Reviews

The lab includes governance workflows through:
- Access review reporting
- Group membership auditing
- Privileged access validation
- RBAC auditing

The script:

```powershell
.\08-access-review-report.ps1
```

Exports governance reporting data to:

```text
C:\Hawks-IAM-Lab\Reports\access-review-report.csv
```

This simulates Identity Governance and Administration (IGA) processes used in enterprise environments.

---

# Offboarding & Identity Lifecycle Management

The lab simulates enterprise offboarding workflows including:
- Account disabling
- Group membership removal
- Access revocation
- OU relocation
- Governance validation

Example offboarding workflow:
- Disable helpdesk.tech03
- Remove RBAC memberships
- Move user to Disabled Users OU
- Validate governance reporting updates

This demonstrates full identity lifecycle management.

---

# Reset & Rebuild Automation

The environment includes full reset automation through:

```powershell
.\99-reset-hawks-iam-lab.ps1
```

This script:
- Removes users
- Deletes security groups
- Removes shares
- Cleans RBAC structures
- Resets the environment for redeployment

This simulates:
- Disaster recovery
- Infrastructure rebuilds
- Repeatable deployment testing
- Automation validation

---

# Skills Demonstrated

## IAM & Security
- Identity Lifecycle Management
- RBAC Architecture
- AGDLP Methodology
- Identity Governance
- Access Reviews
- Least Privilege Enforcement
- Privileged Access Separation

## Active Directory
- OU Design
- User Provisioning
- Security Group Administration
- Group Nesting
- Group Policy Management
- Shared Folder Administration
- NTFS Permissions

## Automation
- PowerShell Scripting
- CSV-Driven Automation
- Infrastructure Orchestration
- Deployment Automation
- Environment Standardization

## Enterprise IT
- Governance Workflows
- Infrastructure Planning
- Security Operations
- Disaster Recovery Preparation
- Hybrid Identity Readiness

---

# Future Improvements

Planned future enhancements include:
- Microsoft Entra ID integration
- Entra Connect synchronization
- Conditional Access
- MFA enforcement
- Privileged Identity Management (PIM)
- Self-Service Password Reset (SSPR)
- Microsoft Graph automation
- Cloud identity governance
- Hybrid identity architecture

---

# Resume-Ready Summary

### Active Directory IAM Automation Lab

- Built an enterprise-style IAM lab modeled after a professional sports organization using Active Directory, PowerShell, RBAC, AGDLP, Group Policy, and shared resource access controls.
- Automated OU deployment, user provisioning, security group creation, group nesting, shared folder access, offboarding, and governance reporting using CSV-driven PowerShell scripts.
- Implemented least privilege access using Global Groups, Domain Local Groups, SMB shares, and NTFS permissions.
- Validated RBAC enforcement from a domain-joined Windows client through real access testing scenarios.
- Generated governance reports and automated offboarding workflows to simulate enterprise identity lifecycle management.

---

# Author

## Dejuan Barnes

### Focus Areas
- Identity & Access Management
- Active Directory
- Microsoft Entra ID
- RBAC Architecture
- PowerShell Automation
- Identity Governance
- Enterprise Infrastructure Automation
