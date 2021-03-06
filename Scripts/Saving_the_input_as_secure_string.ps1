<#
Script : Saving_the_input_as_secure_string
Author : Mohammad Miftakhus Sholikin
Desc.  : Create saving the input as secure string
Date   : 21-Nov-2021
#>



# Used GUI from PowerShell
Add-Type -AssemblyName PresentationFramework

# Create Saving Input Secure String
Write-Host "Scure input string PowerShell" -ForegroundColor Green
$ps1= Read-Host -Prompt "Password 1" -AsSecureString
$ps2= Read-Host -Prompt "Password 2" -AsSecureString
$ps3= Read-Host -Prompt "Password 3" -AsSecureString
[System.Windows.MessageBox]::Show("Password 1: $ps1`n`nPassword 2: $ps2`n`nPassword 3: $ps3")