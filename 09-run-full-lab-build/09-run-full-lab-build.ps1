<# 
Atlanta Hawks IAM Lab
Script: 09-run-full-lab-build.ps1
Purpose: Runs the full lab build in order.

Run this script from an elevated PowerShell session on your Domain Controller.

Before running:
1. Confirm CSV files exist in C:\Hawks-IAM-Lab\CSV.
2. Confirm scripts exist in C:\Hawks-IAM-Lab\Scripts.
3. Run PowerShell as Administrator.
4. Set execution policy:
   Set-ExecutionPolicy RemoteSigned -Scope LocalMachine
#>

$ScriptRootPath = "C:\Hawks-IAM-Lab\Scripts"

$ScriptsToRun = @(
    "01-create-ou-structure.ps1",
    "02-create-security-groups.ps1",
    "03-create-users.ps1",
    "04-assign-group-membership.ps1",
    "05-create-group-nesting.ps1",
    "06-create-shared-folders.ps1",
    "08-access-review-report.ps1"
)

foreach ($Script in $ScriptsToRun) {
    $FullPath = Join-Path $ScriptRootPath $Script

    if (!(Test-Path $FullPath)) {
        Write-Error "Script not found: $FullPath"
        exit 1
    }

    Write-Host ""
    Write-Host "===================================================="
    Write-Host "Running $Script"
    Write-Host "===================================================="

    & $FullPath

    if ($LASTEXITCODE -ne 0) {
        Write-Warning "$Script completed with a non-zero exit code."
    }
}

Write-Host ""
Write-Host "Full Atlanta Hawks IAM Lab build completed."
Write-Host "Review the report at C:\Hawks-IAM-Lab\Reports\access-review-report.csv"
