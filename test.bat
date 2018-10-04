@echo off
if "%~1" neq "_start_" (
  net use ...
  cmd /c "%~f0" _start_ %*
  net use /delete ...
  exit /b
)
shift /1
REM rest of script goes here