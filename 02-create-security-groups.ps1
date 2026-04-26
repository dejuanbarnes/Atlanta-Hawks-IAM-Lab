Import-Module ActiveDirectory

$GroupPath = "OU=Security-Groups,OU=02-Groups,OU=HAWKS-COMPANY,DC=hawks,DC=local"

$Groups = @(
    "GG-Hawks-Players",
    "GG-Hawks-Coaches",
    "GG-Hawks-FrontOffice",
    "GG-Hawks-Medical",
    "GG-Hawks-Marketing",
    "GG-Hawks-Finance",
    "GG-Hawks-IT",
    "GG-Hawks-Helpdesk",
    "GG-Hawks-IdentityAdmins",
    "GG-Hawks-AllStaff",
    "RG-Players-Share-Access",
    "RG-Coaches-Share-Access",
    "RG-Medical-Records-Access",
    "RG-Finance-Restricted-Access",
    "RG-Marketing-Share-Access",
    "RG-IT-Admin-Share-Access"
)

foreach ($Group in $Groups) {
    New-ADGroup `
        -Name $Group `
        -SamAccountName $Group `
        -GroupCategory Security `
        -GroupScope Global `
        -Path $GroupPath
}

Write-Host "Security groups created successfully."