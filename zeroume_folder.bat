@echo off
setlocal enabledelayedexpansion

set /a LENGTH=5
pushd "%~1\"
for %%F in (*.*) do (
set NEWNAME=000000000000000%%~nF
set NEWNAME=!NEWNAME:~-%LENGTH%!%%~xF
rename %%F !NEWNAME!
echo %%F was renamed !NEWNAME!
)
popd
pause