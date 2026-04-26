Import-Module ActiveDirectory

$DefaultPassword = ConvertTo-SecureString "HawksLab@2026" -AsPlainText -Force

$Users = @(
    @{First="Trae"; Last="Young"; Username="trae.young"; OU="Players"; Title="Player"},
    @{First="Jalen"; Last="Johnson"; Username="jalen.johnson"; OU="Players"; Title="Player"},
    @{First="Onyeka"; Last="Okongwu"; Username="onyeka.okongwu"; OU="Players"; Title="Player"},

    @{First="Head"; Last="Coach"; Username="head.coach"; OU="Coaching-Staff"; Title="Head Coach"},
    @{First="Assistant"; Last="Coach01"; Username="assistant.coach01"; OU="Coaching-Staff"; Title="Assistant Coach"},

    @{First="General"; Last="Manager"; Username="general.manager"; OU="Front-Office"; Title="General Manager"},
    @{First="HR"; Last="Manager"; Username="hr.manager"; OU="Front-Office"; Title="HR Manager"},

    @{First="Team"; Last="Doctor"; Username="team.doctor"; OU="Medical-Team"; Title="Team Doctor"},
    @{First="Athletic"; Last="Trainer"; Username="athletic.trainer"; OU="Medical-Team"; Title="Athletic Trainer"},

    @{First="Media"; Last="Manager"; Username="media.manager"; OU="Media-Marketing"; Title="Media Manager"},
    @{First="Social"; Last="Media01"; Username="social.media01"; OU="Media-Marketing"; Title="Social Media Coordinator"},

    @{First="Finance"; Last="Manager"; Username="finance.manager"; OU="Finance"; Title="Finance Manager"},

    @{First="IT"; Last="Admin"; Username="it.admin"; OU="IT-Department"; Title="IT Administrator"},
    @{First="Helpdesk"; Last="Tech01"; Username="helpdesk.tech01"; OU="IT-Department"; Title="Helpdesk Technician"},
    @{First="Identity"; Last="Admin"; Username="identity.admin"; OU="IT-Department"; Title="Identity Administrator"},
    @{First="Security"; Last="Analyst"; Username="security.analyst"; OU="IT-Department"; Title="Security Analyst"}
)

foreach ($User in $Users) {
    $Path = "OU=$($User.OU),OU=01-Users,OU=HAWKS-COMPANY,DC=hawks,DC=local"

    New-ADUser `
        -Name "$($User.First) $($User.Last)" `
        -GivenName $User.First `
        -Surname $User.Last `
        -SamAccountName $User.Username `
        -UserPrincipalName "$($User.Username)@hawks.local" `
        -Title $User.Title `
        -Path $Path `
        -AccountPassword $DefaultPassword `
        -Enabled $true `
        -ChangePasswordAtLogon $false `
        -PasswordNeverExpires $true
}

Write-Host "Users created successfully."