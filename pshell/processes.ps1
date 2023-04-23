#Get-Process
#   [[-Name] <String[]>]
#   [-Module]
#   [-FileVersionInfo]
#   [<CommonParameters>]

Get-Process winword, explorer | Format-List *
#Get-Process | Where-Object {$_.WorkingSet -gt 20000000}

Get-Process SQL* -Module
Get-Process java* -Module
