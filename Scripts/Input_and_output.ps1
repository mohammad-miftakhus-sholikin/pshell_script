<#
Script : Input_and_output
Author : Mohammad Miftakhus Sholikin
Desc.  : Create input and output from user
Date   : 21-Nov-2021
#>



# Create Input Output File
##input your name
Write-Host "Type your name and born information:" -ForegroundColor Green
$var_name = Read-Host -Prompt "Name"
$var_born_at = Read-Host -Prompt "Born at"
$var_born_in = Read-Host -Prompt "Born in"
Write-Host "Your name is $var_name born at $var_born_at in $var_born_in" -ForegroundColor Green