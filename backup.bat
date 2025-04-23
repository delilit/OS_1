::Usage: backup.bat <extension1> <extension2> ... <extensionN>

@echo off
chcp 1251
set "backup_dir=backup"

if "%~1"=="" (
    echo ”кажите хот€ бы одно расширение: например: .txt .docx
    goto :eof
)


if not exist "%backup_dir%" (
    mkdir "%backup_dir%"
)

for %%x in (%*) do (
    copy *%%x "%backup_dir%" >nul
)
