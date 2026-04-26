Import-Module ActiveDirectory

$BaseDN = "DC=hawks,DC=local"

$OUs = @(
    "HAWKS-COMPANY",
    "01-Users",
    "Players",
    "Coaching-Staff",
    "Front-Office",
    "Medical-Team",
    "Media-Marketing",
    "Finance",
    "IT-Department",
    "Disabled-Users",
    "02-Groups",
    "Security-Groups",
    "Distribution-Groups",
    "03-Computers",
    "Arena-Computers",
    "Office-Computers",
    "IT-Workstations",
    "04-Service-Accounts",
    "05-Privileged-Accounts",
    "06-Access-Review",
    "07-Temporary-Access"
)

New-ADOrganizationalUnit -Name "HAWKS-COMPANY" -Path $BaseDN -ProtectedFromAccidentalDeletion $true

New-ADOrganizationalUnit -Name "01-Users" -Path "OU=HAWKS-COMPANY,$BaseDN"
New-ADOrganizationalUnit -Name "02-Groups" -Path "OU=HAWKS-COMPANY,$BaseDN"
New-ADOrganizationalUnit -Name "03-Computers" -Path "OU=HAWKS-COMPANY,$BaseDN"
New-ADOrganizationalUnit -Name "04-Service-Accounts" -Path "OU=HAWKS-COMPANY,$BaseDN"
New-ADOrganizationalUnit -Name "05-Privileged-Accounts" -Path "OU=HAWKS-COMPANY,$BaseDN"
New-ADOrganizationalUnit -Name "06-Access-Review" -Path "OU=HAWKS-COMPANY,$BaseDN"
New-ADOrganizationalUnit -Name "07-Temporary-Access" -Path "OU=HAWKS-COMPANY,$BaseDN"

$UserOUs = @(
    "Players",
    "Coaching-Staff",
    "Front-Office",
    "Medical-Team",
    "Media-Marketing",
    "Finance",
    "IT-Department",
    "Disabled-Users"
)

foreach ($OU in $UserOUs) {
    New-ADOrganizationalUnit -Name $OU -Path "OU=01-Users,OU=HAWKS-COMPANY,$BaseDN"
}

$GroupOUs = @(
    "Security-Groups",
    "Distribution-Groups"
)

foreach ($OU in $GroupOUs) {
    New-ADOrganizationalUnit -Name $OU -Path "OU=02-Groups,OU=HAWKS-COMPANY,$BaseDN"
}

$ComputerOUs = @(
    "Arena-Computers",
    "Office-Computers",
    "IT-Workstations"
)

foreach ($OU in $ComputerOUs) {
    New-ADOrganizationalUnit -Name $OU -Path "OU=03-Computers,OU=HAWKS-COMPANY,$BaseDN"
}

Write-Host "Atlanta Hawks OU structure created successfully."