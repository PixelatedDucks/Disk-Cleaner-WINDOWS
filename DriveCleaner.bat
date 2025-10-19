@echo off
title Drive Cleaner
color F0
echo ========================================
echo         🧹 Drive Cleaner 
echo ========================================
echo.
echo This will delete temporary files to free up space.
echo Are you sure you want to continue? 
echo Check out our Website! sites.google.com/view/drive-cleaner1
echo.

set /p confirm=Type Y to continue or N to cancel: 
if /i "%confirm%"=="Y" (
    echo.
    echo Cleaning temporary files...
    del /q /f /s "%TEMP%\*" >nul 2>&1
    cleanmgr /sagerun:1
    echo.
    echo ✅ Cleanup complete!
) else (
    echo.
    echo ❌ Cleanup cancelled.
)

echo.
pause