# serve
Set-Service -Name BITS -StartupType Automatic
Get-Service BITS | Select-Object -Property Name, StartType, Status

#start
Set-Service -Name sbootapp -Status Running -PassThru

# pause
Get-Service -Name sbootapp | Set-Service -Status Paused
# stop
$S = Get-Service -Name sbootapp
Set-Service -InputObject $S -Status Stopped
