######## Use of core functionality

### Get env prop
Get-Item -Path env:
Get-Item -Path env:JAVA_HOME

###  set
Set-Item -Path env:JAVA_HOME -Value "C:\Users\andrii\java"

######## Use of C# API

# Get
$path = [System.Environment]::GetEnvironmentVariable("PATH")
$ javaHome = [System.Environment]::GetEnvironmentVariable("JAVA_HOME")

# Set
[System.Environment]::SetEnvironmentVariable("JAVA_HOME", "C:\Users\andrii\java")
[System.Environment]::SetEnvironmentVariable("PATH_TO_FX", "C:\prog\java\jfx\openjfx-24.0.2_windows-x64_bin-sdk\javafx-sdk-24.0.2\lib")
