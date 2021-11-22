<#
Script : Advanced_cmdlets
Author : Mohammad Miftakhus Sholikin
Desc.  : Set up dates and timers also applay some operations on it
Date   : 22-Nov-2021
#>



# Get-Unique Cmdlet
##Get-Unique
###create list
$list_1 = @("one","three","two","two","four","five")
$list_2 = 1,3,2,2,4,5
###printing the list
$list_1
$list_2
###sorting list
$list_1 | sort | Get-Unique
$list_2 | sort | Get-Unique

# Measure-Object Cmdlet
##Measure-Object
###get properties of the object
Get-Content .\Tutorials\Files_and_folder_operations.ps1 | Measure-Object -character -line -word
###get properties of the directory
Get-ChildItem .\ | Measure-Object