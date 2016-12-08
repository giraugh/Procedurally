@echo off

echo deleting previous translated source
@RD /S /Q "built"

echo.

echo creating copy of source
xcopy /s /y /q game built\

echo.

echo translating from venus to lua
cd Venus
Venus ../built
if %ERRORLEVEL% equ 1 (
goto end
)
cd ..

echo.

echo cleaning...
call clean

:end
