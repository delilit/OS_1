@echo off
if "%~2"=="" (
    echo �������������: compare_dirs <�����1> <�����2>
    goto :eof
)

echo ��������� ����������� �����: %1 � %2
echo -----------------------------------------
for %%f in (%1\*) do (
    if not exist "%2\%%~nxf" (
		echo ���� ����������� �� ������ �����: %%~nxf
        )
)

for %%f in (%2\*) do (
    if not exist "%1\%%~nxf" (
        echo ���� ����������� � ������ �����: %%~nxf
    )
)