::Usage guine: find_compare.bat <filename.extensin>

@echo off
chcp 1251 >nul
setlocal
setlocal EnableDelayedExpansion

if "%~1"=="" (
    echo ������: �� ������� ��� �����.
    echo �������������: findfile.bat ���_�����
    goto :eof
)

set "FILENAME=%~1"
set "ROOTFILE=%~dp0"
set "FOUND=0"

echo %ROOTFILE%

for /r %%f in (%FILENAME%) do (
    if exist "%%f" (
        set "FOUND=1"
        echo ���� ������: %%f
        ::echo ��������� � %ROOTFILE%...
        fc /b "%%f" "%ROOTFILE%%FILENAME%"
    )
)

::if "%FOUND%"=="0" (
    ::echo ���� %FILENAME% �� ������ �� � ����� �����������.
::)
endlocal
