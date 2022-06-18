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

# Format-List Cmdlet
##Format-List
###create format to the output as a list
####get the file inside Tutorials directory
$list_of_tutotials_directory = Get-ChildItem .\Tutorials\*.ps1
####get detail using Format-List cmdlet
Format-List -InputObject $A
####get service and formated as list
Get-Service | Format-List

# Format-Wide Cmdlet
##Format-Wide
###format output as an table
####get file detail inside Tutorials directory
$list_of_tutotials_directory = Get-ChildItem .\Tutorials\*.ps1
####get file detail using Format-Wide cmdlet
Format-Wide -InputObject $list_of_tutotials_directory
####get require property
Format-Wide -InputObject $list_of_tutotials_directory -Property -Property Length

# Where-Object Cmdlet
##Where-Object
###cmdlet can be used to select objects
####get stopped services
Get-Service | Where-Object {$_.Status -eq "Stopped"}
####get process based on name
Get-Process | Where-Object {$_.ProcessName -Match "^p.*"}

#