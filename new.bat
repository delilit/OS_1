@echo off
if "%~2"=="" (
    echo їспользование: compare_dirs <папка1> <папка2>
    goto :eof
)

echo Чравнение содержимого папок: %1 и %2
echo -----------------------------------------
for %%f in (%1\*) do (
    if not exist "%2\%%~nxf" (
		echo Сайл отсутствует во второй папке: %%~nxf
        )
)

for %%f in (%2\*) do (
    if not exist "%1\%%~nxf" (
        echo Сайл отсутствует в первой папке: %%~nxf
    )
)