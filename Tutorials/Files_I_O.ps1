<#
Script : Files_I_O
Author : Mohammad Miftakhus Sholikin
Desc.  : Set up dates and timers also applay some operations on it
Date   : 22-Nov-2021
#>



# Create Text File
##method 1 create file.txt
New-Item -Path .\file.txt -ItemType File
##method 2 adding content
Set-Content .\file.txt "First line of the text"
###or using Add-Content method for next input text
Add-Content .\file.txt "Second line of the text"
##method 3 reading file.txt
Get-Content .\file.txt
##method 4 delete content of the file.txt
Clear-Content .\file.txt

# Create XML File
##method 1 create file.xml
New-Item -Path .\file.xml -ItemType File
##method 2 adding content
Set-Content .\file.xml "<title>First line of the text</title>"
###or using Add-Content method for next input text
Add-Content .\file.xml "<title>Second line of the text</title>"
##method 3 reading file.xml
Get-Content .\file.xml
##method 4 delete content of the file.xml
Clear-Content .\file.xml

# Create CSV File
##method 1 create file.csv
New-Item -Path .\file.csv -ItemType File
##method 2 adding content
Set-Content .\file.csv "no,name,age,year_of_birth"
###or using Add-Content method for next input text
Add-Content .\file.csv "1,Sholiki,30,1991" #first data
Add-Content .\file.csv "2,Sobirin,34,1987" #second data
##method 3 reading file.csv
Get-Content .\file.csv
##method 4 delete content of the file.csv
Clear-Content .\file.csv

# Create HTML File
##method 1 create file.html
New-Item -Path .\file.html -ItemType File
##method 2 adding content
Set-Content .\file.html "<html>First line of the text</html>"
###or using Add-Content method for next input text
Add-Content .\file.html "<html>Second line of the text</html>"
##method 3 reading file.html
Get-Content .\file.html
##method 4 delete content of the file.html
Clear-Content .\file.html