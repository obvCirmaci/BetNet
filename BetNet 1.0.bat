::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQISLQ96SRDCE3uuD7gV++3pjw==
::eg0/rx1wNQPfEVWB+kM9LVsJDAaHKGW/EtU=
::fBEirQZwNQPfEVWB+kM9LVsJDAaHKGW/EtU=
::cRolqwZ3JBvQF1fEqQIEIB4UD1XCGnm/A/UV5vz+/eSCtg0PUfEwdJneyNQ=
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEvGF5CxREVRaLO2OuRudMurm7oqqzqkQOFNItd4jJ27nOKfNT/k3hNZ8j0nNMkc8ZDRcYbgCkfgomvXcCuWLFFM6Ovg7iQyg=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDhdXgmDP2KGIrAP4/z0/9alp1kzUfZxfZfeug==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
mode 46
color 0d
title  BetNet 1.0


:menu
cls
echo  ---------------------------------------------
echo                    BetNet
echo  ---------------------------------------------
echo   #1 Free Solution to High Ping and Slow Net
echo  ---------------------------------------------
echo.
echo.
echo  ---------------------------------------------
echo  -    Press '1' To Start The Process         -
echo  ---------------------------------------------
set /p choose="Choose : "

if /i "%choose%"=="1" (goto 1)

::ELSE
goto menu

:1
color 0d
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh winsock reset
netsh int tcp set global chimney=enabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set supplemental
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=enabled
netsh advfirewall firewall add rule name="StopThrottling" dir=in action=block remoteip=173.194.55.0/24,206.111.0.0/16 enable=yes
goto end
:end
SET msgboxTitle=Success
SET msgboxBody=Our Internet tweaks have been succesfully Applied!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
exit