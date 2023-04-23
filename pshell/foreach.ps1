 # request
 for ($num = 1 ; $num -le 10 ; $num++){  Invoke-WebRequest https://us-central1-andmal-bot.cloudfunctions.net/dotnet2 }
 
#  request with pipe
 1..20 | % { Invoke-WebRequest https://us-central1-andmal-bot.cloudfunctions.net/dotnet2 }

# files

foreach ($file in { Get-Item * })
{
    # When find succeeds, the loop breaks
    Rename-Item $file 
}

Get-ChildItem -Path *.groovy |
  Where-Object {$_.length -gt 10000} |
    Sort-Object -Property length |
      Format-Table -Property name, length

# Wrapping with a pipe at the beginning of a line (no backtick required)
Get-Process | Where-Object CPU | Where-Object Path
    | Get-Item | Where-Object FullName -match "AppData"
    | Sort-Object FullName -Unique

# Wrapping with a pipe on a line by itself
Get-Process | Where-Object CPU | Where-Object Path
    |
    Get-Item | Where-Object FullName -match "AppData"
    |
    Sort-Object FullName -Unique

foreach ($file in Get-ChildItem)
{
  Write-Host $file
}

foreach ($file in Get-ChildItem)
{
  if ($file.length -gt 100KB)
  {
    Write-Host $file
  }
}    
