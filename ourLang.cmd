@echo off
rem version=1.0stable
set sendmd[1]=msg
set sendmd[2]=boxTitle
rem This is OUR lang
set line=1
call :workspace

:workspace
cls
call :line1

rem Write
:line1
call :clrScr
:line2
call :send msg , "Write Some Code ?!"
:line3
call :KeybReadKey
:line4
call :end
rem here

rem function2
:send
if %~1 == %sendmd[1]%  (
echo %~2 %~3
call :nextLine
)
if %~1 == %sendmd[2]%  (
title %~2
call :nextLine
) else (
set errorlevel=1
echo invalid syntax
call :nextLine
)

:add
set /a c=%~1 + %~2
echo %~1 + %~2 = %c%
call :nextLine

:sub
set /a c=%~1 - %~2
echo %~1 - %~2 = %c%
call :nextLine

:mul
set /a c=%~1 * %~2
echo %~1 * %~2 = %c%
call :nextLine

:div
if %~2 == 0   (
echo Cant Divide By Zero !
call :nextLine
)
set /a c=%~1 / %~2
echo %~1 / %~2 = %c%
call :nextLine

:showTime
echo %time%
call :nextLine

:showDate
echo %date%
call :nextLine

:end
call :eof

:nextLine
set /a line=%line% + 1
call :line%line%

:getInput
set /p result=
call :nextLine

:registerVar
set %~1=%~2
echo Success Register Variable Name %~1
echo With Value %~2
call :nextLine

:clrScr
cls
call :nextLine

:keybReadKey
pause>nul
call :nextLine
rem function2

:eof
exit