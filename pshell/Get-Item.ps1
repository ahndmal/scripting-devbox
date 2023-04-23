 Get-Item -Path Registry::HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\office\16.0\common\signin |>>   Select-Object -ExpandProperty Value
 Get-ItemProperty -Path .
 # Get env prop
 Get-Item -Path env:
 
 # Registry
 Get-Item -Path Registry::Computer\HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\office\16.0\common\signin | 
>>   Select-Object -ExpandProperty Property
