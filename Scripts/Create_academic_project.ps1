# Masukan dari Pengguna
$owner_project = Read-Host "Pemilik proyek akademik"
$github_url_project = "https://github.com/" + (Read-Host "URL repositori GitHub (contoh: github.com/username/repo)")
$dir_project = Join-Path $PWD (Read-Host "Nama direktori proyek akademik (contoh: NO_YYYY__Direktori_proyek_akademik)")
$name_project = Read-Host "Nama proyek akademik (contoh: YYYY__Nama_proyek_akademik)"
$title_project = Read-Host "Judul proyek akademik"
$desc_project = Read-Host "Deskripsi proyek akademik"

$date = Get-Date -Format "MM-dd-yyyy"
$RED = [ConsoleColor]::Red
$WHITE = [ConsoleColor]::White

# Buat direktori proyek jika tidak ada
if (-Not (Test-Path -Path $dir_project -PathType Container)) {
    Write-Host "Membuat direktori $dir_project..." -ForegroundColor $WHITE
    Start-Sleep -Seconds 1.5
    New-Item -ItemType Directory -Path $dir_project
    @("work_desk_i", "work_desk_i/analysis", "work_desk_i/publication", "work_desk_i/reference") | ForEach-Object { New-Item -ItemType Directory -Path (Join-Path $dir_project $_) }
    $templateFiles = @("Data", "Result", "Rscript_metal_qualitative", "Rscript_metal_quantitative", "Rscript_descriptive", "Diagram", "Diagram.dot", "Prisma_diagram.tex", "project_logs.docx")
    $templateFiles | ForEach-Object {
        Copy-Item -Path (~\Templates\new_academic_projects\$_"_$_.xlsx") -Destination (Join-Path $dir_project "work_desk_i/analysis/$__$name_project.xlsx")
    }
}

# Buat skrip untuk mengelola Git
if (-Not (Test-Path -Path (Join-Path $dir_project "__NEW_git_add_new_repo.ps1") -PathType Leaf)) {
    $scriptContent = @"
# Penulis  : $owner_project
# GitHub   : $github_url_project
# Deskripsi: $desc_project
# Tanggal  : $date

$DATE = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")

Set-Location -Path "$dir_project/work-desk/"

git init
git add .
git commit -m $DATE
git remote add new "$github_url_project"
git push -u new master

Set-Location -Path "..\.."
Start-Process "$github_url_project"
Exit
Set-Location -Path "next_directory"
Invoke-Expression -Command ".\git_add_new_in_repo.ps1"
"@
    Set-Content -Path (Join-Path $dir_project "__NEW_git_add_new_repo.ps1") -Value $scriptContent
}
else {
    Write-Host "Nama yang Anda pilih untuk skrip baru sudah digunakan.`nSilakan pilih nama lain." -ForegroundColor $RED
}