Get-ChildItem -Path C:\Test

#l (link)
#d (directory)
#a (archive)
#r (read-only)
#h (hidden)
#s (system).

# with sub-directories
Get-ChildItem -Path C:\Test\*.txt -Recurse -Force
