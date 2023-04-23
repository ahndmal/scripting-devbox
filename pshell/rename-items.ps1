Get-ChildItem *.txt | Rename-Item -NewName { $_.Name -replace '.txt','.log' }
Get-ChildItem *.groovy | Rename-Item -NewName { $_.Name -replace '.groovy','.java' }

