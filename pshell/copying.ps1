Copy-Item "C:\andrii\logs\mar1604.log.txt" -Destination "C:\Presentation" -Recurse
# copy and rename
Copy-Item "\\Server01\Share\Get-Widget.ps1" -Destination "\\Server12\ScriptArchive\Get-Widget.ps1.txt"
# copy prop
Copy-ItemProperty -Path "sb-app" -Destination "HKLM:\Software\app1" -Name "prop1"
