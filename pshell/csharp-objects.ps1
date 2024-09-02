# https://learn.microsoft.com/en-us/powershell/scripting/samples/using-static-classes-and-methods?view=powershell-7.4

[System.Environment]

# view members
[System.Environment] | Get-Member -Static

# Get property
[System.Environment]::UserName

[System.Math] | Get-Member -MemberType Methods

### Base64
$bts = [System.Convert]::FromBase64String("TOKEN_HERE")
[System.Text.Encoding]::UTF8.GetString($bts)
