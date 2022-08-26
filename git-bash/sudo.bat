@echo off

REM Escape quotes in the parameters.
REM

set ARGS=%*
set ARGS=%ARGS:"=\"%

REM Run as administrator
REM

runas /user:administrator "%ARGS%"