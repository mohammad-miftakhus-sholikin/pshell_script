<#
Script : Saving_the_input_as_secure_string
Author : Mohammad Miftakhus Sholikin
Desc.  : Create saving the input as secure string
Date   : 21-Nov-2021
#>



# Create Saving Input Secure String
Write-Host "Welcome to demo of powershell prompt input" -ForegroundColor Green
$s1= Read-Host -Prompt "Enter your subject 1 name" -AsSecureString
$s2= Read-Host -Prompt "Enter your subject 2 name" -AsSecureString
$s3= Read-Host -Prompt "Enter your subject 3 name" -AsSecureString
Write-Host "The entered name is" $s1 -ForegroundColor Green
Write-Host "The entered age is" $s2 -ForegroundColor Green
Write-Host "The entered city is" $s3 -ForegroundColor Green