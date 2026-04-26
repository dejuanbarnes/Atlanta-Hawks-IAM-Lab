$BasePath = "C:\Shares"

$Folders = @(
    "Players",
    "Coaches",
    "Medical",
    "Finance",
    "Marketing",
    "IT",
    "Public"
)

New-Item -Path $BasePath -ItemType Directory -Force

foreach ($Folder in $Folders) {
    $FullPath = Join-Path $BasePath $Folder
    New-Item -Path $FullPath -ItemType Directory -Force

    New-SmbShare `
        -Name $Folder `
        -Path $FullPath `
        -FullAccess "HAWKS\GG-Hawks-IT" `
        -ChangeAccess "HAWKS\GG-Hawks-AllStaff"
}

Write-Host "Shared folders created successfully."