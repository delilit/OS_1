::Usage: compare_dir.bat <dir1> <dir2>

@echo off
chcp 1251
if "%~2"=="" (
    echo �������������: compare_dirs.bat
    goto :eof
)

echo ��������� ����������� �����: %1 � %2
echo -----------------------------------------
for %%f in (%1\*) do (
    if not exist "%2\%%~nxf" (
        echo ���� ���������� �� ������ ���������� %%~nxf
        )
    )

for %%f in (%2\*) do (
    if not exist "%1\%%~nxf" (
        echo ���� ���������� � ������ ���������� %%~nxf
    )
)