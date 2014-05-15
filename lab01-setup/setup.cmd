@echo off
SET DIR=%~dp0%

::prerequisites - posh v2+
echo You must run this from an administrative command prompt. Please ensure that before continuing...
pause

@powershell -NoProfile -ExecutionPolicy Bypass -Command "%DIR%setup.ps1"
