@echo off
echo building...
call build

echo executing...
echo.
cd love
love.exe --console ../built
cd ..
echo.

echo done