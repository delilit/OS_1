::Usage: compare_dir.bat <dir1> <dir2>

@echo off
chcp 1251
if "%~2"=="" (
    echo Использование: compare_dirs.bat
    goto :eof
)

echo Сравнение содержимого папок: %1 и %2
echo -----------------------------------------
for %%f in (%1\*) do (
    if not exist "%2\%%~nxf" (
        echo Файл отсутсвует во второй директории %%~nxf
        )
    )

for %%f in (%2\*) do (
    if not exist "%1\%%~nxf" (
        echo Файл отсутсвует в первой директории %%~nxf
    )
)