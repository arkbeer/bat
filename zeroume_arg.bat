@echo off
setlocal enabledelayedexpansion

set /a LENGTH=5

:loop_start
if "%~1"=="" goto loop_exit
pushd "%~dp1"
set OLDNAME=%~nx1
set NEWNAME=00000000000000000%~n1
set NEWNAME=!NEWNAME:~-%LENGTH%!%~x1
rename %OLDNAME% %NEWNAME%
echo %OLDNAME% was renamed %NEWNAME%
popd
shift
goto loop_start

:loop_exit
pause