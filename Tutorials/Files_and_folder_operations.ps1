<#
Script : Files_and_folders_operations
Author : Mohammad Miftakhus Sholikin
Desc.  : Create files and folder operations
Date   : 21-Nov-2021
#>



# Create File
##create file *.ps1
$file = .\file.ps1
##add new content into the file *.ps1
New-Item $file -ItemType File -Value "The first sentence in our file."
Add-Content $file "The second sentence in out file."
##create file *.csv
filecsv = ".\file.csv"
##add new content into the file *.csv
New-Item $filecsv -ItemType File -Value ("1,2,3" + [Environment]::NewLine)
Add-Content $filecsv ("4,5,6")
Add-Content $filecsv ("7,8,9")

# Create folder
New-Item -Path ".\folder" -ItemType Directory

# Copy File
##copy single file
Copy-Item ".\origin_file" ".\destination_file"
##copy multiple file using "*" (all detonation)
Copy-Item -Filter *.txt -Path ".\origin_file" -Recurse -Destination ".\destination_file"

# Copy Folder
##copy single folder
Copy-Item ".\origin_folder" ".\destination_folder"
##copy multiple folder using "*" (all detonation)
Copy_Item ".\origin_folder*" -Destination ".\destination_folder"

#Delete File
##delete file
Remove-Item "origin_file.txt"
##delete file recursively
Remove-Item ".\origin_folder" -Recurse

#Delete Folder
##delete folder
Remove-Item ".\origin_folder"
##delete folder recursively
Remove-Item ".\origin_folder" -Recurse

#Move File
##move file
Move-Item .\origin_folder\file.txt .\destination_folder

#Move Folder
##move folder
Move-Item .\origin_folder .\destination_folder

#Rename File
##rename file
Rename-Item file.txt renamed_file.txt

#Rename Folder
##rename folder
Rename-Item origin_folder destination_folder

#Retrieving Item
##retrieve content
Get-Content Files_and_folder_operations.ps1
##size of the content
(Get-Content Files_and_folder_operations.ps1).length

#Check File Existence
##check file existence
Test-Path Files_and_folder_operations.ps1
##check file notexistence
Test-Path Files_and_folder_operations_not_identified.ps1

#Check Folder Existence
##check folder existence
Test-Path .git
##check folder notexistence
Test-Path .git_not_identified