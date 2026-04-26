param (
    [Parameter(Mandatory=$true)]
    [string]$Username
)

Import-Module ActiveDirectory

$DisabledOU = "OU=Disabled-Users,OU=01-Users,OU=HAWKS-COMPANY,DC=hawks,DC=local"

$User = Get-ADUser -Identity $Username -Properties MemberOf

if ($null -eq $User) {
    Write-Host "User not found."
    exit
}

foreach ($GroupDN in $User.MemberOf) {
    Remove-ADGroupMember -Identity $GroupDN -Members $Username -Confirm:$false
}

Disable-ADAccount -Identity $Username

Set-ADUser `
    -Identity $Username `
    -Description "Account disabled and offboarded as part of IAM lifecycle process."

Move-ADObject `
    -Identity $User.DistinguishedName `
    -TargetPath $DisabledOU

Write-Host "$Username has been offboarded successfully."