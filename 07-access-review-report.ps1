Import-Module ActiveDirectory

$Groups = @(
    "GG-Hawks-Players",
    "GG-Hawks-Coaches",
    "GG-Hawks-FrontOffice",
    "GG-Hawks-Medical",
    "GG-Hawks-Marketing",
    "GG-Hawks-Finance",
    "GG-Hawks-IT",
    "GG-Hawks-Helpdesk",
    "GG-Hawks-IdentityAdmins"
)

$Report = foreach ($Group in $Groups) {
    $Members = Get-ADGroupMember -Identity $Group | Select-Object Name, SamAccountName, objectClass

    foreach ($Member in $Members) {
        [PSCustomObject]@{
            GroupName = $Group
            MemberName = $Member.Name
            SamAccountName = $Member.SamAccountName
            ObjectType = $Member.objectClass
            ReviewDate = Get-Date
        }
    }
}

$Report | Export-Csv "C:\Shares\Access-Review-Report.csv" -NoTypeInformation

Write-Host "Access review report exported to C:\Shares\Access-Review-Report.csv"