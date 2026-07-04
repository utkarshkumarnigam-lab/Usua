@echo off
title Hasu Chat Server
echo Starting Hasu Chat Server...
echo.

:: Start the Node server in the background
start /B node "%~dp0server.js"

:: Wait 2 seconds for the server to be ready
timeout /t 2 /nobreak >nul

:: Open the browser
start "" "http://127.0.0.1:3000"

echo Server is running at http://127.0.0.1:3000
echo Press Ctrl+C to stop.
echo.

:: Keep the window open and show server logs
node "%~dp0server.js"
