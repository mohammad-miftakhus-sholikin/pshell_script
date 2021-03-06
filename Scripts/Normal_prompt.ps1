<#
Script : Normal_prompt
Author : Mohammad Miftakhus Sholikin
Desc.  : Create normal prompt
Date   : 21-Nov-2021
#>



# Load Assembly
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

# Input String
Write-Host "Input your name, age, and city" -ForegroundColor Green
$name= Read-Host -Prompt "Name"
$age= Read-Host -Prompt "Age"
$city= Read-Host -Prompt "City"

# Prompt GUI
$oReturn=[System.Windows.Forms.MessageBox]::Show("Your name is $name age $age live in $city","Your name is",[System.Windows.Forms.MessageBoxButtons]::OKCancel) 
switch ($oReturn){
    "OK" {
        write-host "You pressed OK"
        #enter some code
    } 
    "Cancel" {
        write-host "You pressed Cancel"
        #enter some code
    } 
}