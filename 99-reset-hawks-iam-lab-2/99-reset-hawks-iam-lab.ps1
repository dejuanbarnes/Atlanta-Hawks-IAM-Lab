<#
Atlanta Hawks IAM Lab
Script: 99-reset-hawks-iam-lab.ps1
Purpose: Deletes the Hawks IAM lab so you can start from scratch.

WARNING:
This deletes lab users, groups, OUs, SMB shares, shared folders, and reports.
Only run this in your lab domain.

Recommended:
1. Take a VMware snapshot first.
2. Run PowerShell as Administrator.
3. Run from the Domain Controller.

Expected CSV:
C:\Hawks-IAM-Lab\CSV\99-reset-hawks-iam-lab.csv
#>

Import-Module ActiveDirectory

$CsvPath = "C:\Hawks-IAM-Lab\CSV\99-reset-hawks-iam-lab.csv"
$DomainDN = (Get-ADDomain).DistinguishedName

if (!(Test-Path $CsvPath)) {
    Write-Error "Reset CSV not found: $CsvPath"
    exit 1
}

$ResetItems = Import-Csv $CsvPath

Write-Host ""
Write-Host "===================================================="
Write-Host "ATLANTA HAWKS IAM LAB RESET"
Write-Host "===================================================="
Write-Host "This will remove Hawks IAM lab objects."
Write-Host "Domain: $DomainDN"
Write-Host ""

$Confirm = Read-Host "Type DELETE to continue"

if ($Confirm -ne "DELETE") {
    Write-Host "Reset cancelled."
    exit 0
}

Write-Host ""
Write-Host "Step 1: Removing SMB shares..."
$ResetItems | Where-Object { $_.ObjectType -eq "Share" } | ForEach-Object {
    $ShareName = $_.ObjectName
    $Share = Get-SmbShare -Name $ShareName -ErrorAction SilentlyContinue

    if ($Share) {
        Remove-SmbShare -Name $ShareName -Force
        Write-Host "Removed SMB share: $ShareName"
    }
    else {
        Write-Host "SMB share not found: $ShareName"
    }
}

Write-Host ""
Write-Host "Step 2: Removing shared folders..."
$ResetItems | Where-Object { $_.ObjectType -eq "Folder" } | ForEach-Object {
    $FolderPath = $_.ObjectPath

    if (Test-Path $FolderPath) {
        Remove-Item -Path $FolderPath -Recurse -Force
        Write-Host "Removed folder: $FolderPath"
    }
    else {
        Write-Host "Folder not found: $FolderPath"
    }
}

Write-Host ""
Write-Host "Step 3: Removing report folders..."
$ResetItems | Where-Object { $_.ObjectType -eq "ReportFolder" } | ForEach-Object {
    $FolderPath = $_.ObjectPath

    if (Test-Path $FolderPath) {
        Remove-Item -Path $FolderPath -Recurse -Force
        Write-Host "Removed report folder: $FolderPath"
    }
    else {
        Write-Host "Report folder not found: $FolderPath"
    }
}

Write-Host ""
Write-Host "Step 4: Removing Hawks OU tree from Active Directory..."

$RootOU = Get-ADOrganizationalUnit -Filter "Name -eq 'Hawks'" -SearchBase $DomainDN -ErrorAction SilentlyContinue | Select-Object -First 1

if ($null -eq $RootOU) {
    Write-Host "Hawks OU not found. Nothing to remove from AD."
}
else {
    Write-Host "Found root OU: $($RootOU.DistinguishedName)"

    Write-Host "Disabling accidental deletion protection on all child OUs..."
    Get-ADOrganizationalUnit -Filter * -SearchBase $RootOU.DistinguishedName -SearchScope Subtree -Properties ProtectedFromAccidentalDeletion |
        ForEach-Object {
            Set-ADOrganizationalUnit -Identity $_.DistinguishedName -ProtectedFromAccidentalDeletion $false
        }

    Set-ADOrganizationalUnit -Identity $RootOU.DistinguishedName -ProtectedFromAccidentalDeletion $false

    Write-Host "Deleting Hawks OU tree. This removes all users, groups, and child OUs under it..."
    Remove-ADOrganizationalUnit -Identity $RootOU.DistinguishedName -Recursive -Confirm:$false

    Write-Host "Removed Hawks OU tree."
}

Write-Host ""
Write-Host "===================================================="
Write-Host "RESET COMPLETE"
Write-Host "===================================================="
Write-Host "You can now rerun the Hawks IAM lab from scratch."
Write-Host "Recommended next command:"
Write-Host "C:\Hawks-IAM-Lab\Scripts\09-run-full-lab-build.ps1"
