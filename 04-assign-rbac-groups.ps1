Import-Module ActiveDirectory

$Assignments = @{
    "GG-Hawks-Players" = @("trae.young", "jalen.johnson", "onyeka.okongwu")
    "GG-Hawks-Coaches" = @("head.coach", "assistant.coach01")
    "GG-Hawks-FrontOffice" = @("general.manager", "hr.manager")
    "GG-Hawks-Medical" = @("team.doctor", "athletic.trainer")
    "GG-Hawks-Marketing" = @("media.manager", "social.media01")
    "GG-Hawks-Finance" = @("finance.manager")
    "GG-Hawks-IT" = @("it.admin", "helpdesk.tech01", "identity.admin", "security.analyst")
    "GG-Hawks-Helpdesk" = @("helpdesk.tech01")
    "GG-Hawks-IdentityAdmins" = @("identity.admin")
}

foreach ($Group in $Assignments.Keys) {
    foreach ($User in $Assignments[$Group]) {
        Add-ADGroupMember -Identity $Group -Members $User
    }
}

$AllUsers = @(
    "trae.young",
    "jalen.johnson",
    "onyeka.okongwu",
    "head.coach",
    "assistant.coach01",
    "general.manager",
    "hr.manager",
    "team.doctor",
    "athletic.trainer",
    "media.manager",
    "social.media01",
    "finance.manager",
    "it.admin",
    "helpdesk.tech01",
    "identity.admin",
    "security.analyst"
)

foreach ($User in $AllUsers) {
    Add-ADGroupMember -Identity "GG-Hawks-AllStaff" -Members $User
}

# AGDLP-style nesting
Add-ADGroupMember -Identity "RG-Players-Share-Access" -Members "GG-Hawks-Players"
Add-ADGroupMember -Identity "RG-Coaches-Share-Access" -Members "GG-Hawks-Coaches"
Add-ADGroupMember -Identity "RG-Medical-Records-Access" -Members "GG-Hawks-Medical"
Add-ADGroupMember -Identity "RG-Finance-Restricted-Access" -Members "GG-Hawks-Finance"
Add-ADGroupMember -Identity "RG-Marketing-Share-Access" -Members "GG-Hawks-Marketing"
Add-ADGroupMember -Identity "RG-IT-Admin-Share-Access" -Members "GG-Hawks-IT"

Write-Host "RBAC group assignments completed successfully."