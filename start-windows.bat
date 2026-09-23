@echo off
rem Yut game launcher (Windows)
cd /d "%~dp0"
set PY=
where python >nul 2>nul && set PY=python
if not defined PY where py >nul 2>nul && set PY=py
if defined PY (
  start "Yut game server - close this window to stop" /min %PY% -m http.server 8000
  timeout /t 2 >nul
  start "" http://localhost:8000
) else (
  echo Python not found. Opening the file directly - YouTube music will use the built-in gayageum music instead.
  start "" "%~dp0index.html"
)
