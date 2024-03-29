<#
Script : Dates_and_timers
Author : Mohammad Miftakhus Sholikin
Desc.  : Set up dates and timers also applay some operations on it
Date   : 22-Nov-2021
#>



# Set System Date
##system date
Get-Date
Set-Date -Date (Get-Date).AddDays(1)
Set-Date -Date (Get-Date).AddDays(-1)

# Get System Date
##get date
Get-Date -DisplayHint Date

# Get System Time
##get time
Get-Date -DisplayHint Time

#Set System Time
##set time
$timeToAdd = New-TimeSpan -Minutes -60
Set-Date -adjust $timeToAdd