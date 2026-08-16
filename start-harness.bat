@echo off
rem DeepSeek Harness launcher: start if not running, then open the web UI.
setlocal
set URL=http://127.0.0.1:3080

powershell -NoProfile -Command "try { $null = Invoke-WebRequest -Uri '%URL%' -UseBasicParsing -TimeoutSec 2; exit 0 } catch { exit 1 }"
if %errorlevel%==0 goto open

echo [launcher] DeepSeek Harness not running, starting in a minimized window...
start "DeepSeek Harness" /min cmd /c "npx @deepseek-ai/dsh web"

:wait
powershell -NoProfile -Command "try { $null = Invoke-WebRequest -Uri '%URL%' -UseBasicParsing -TimeoutSec 2; exit 0 } catch { exit 1 }"
if %errorlevel%==0 goto open
timeout /t 3 /nobreak >nul
goto wait

:open
echo [launcher] Opening %URL% ...
start "" "%URL%"
endlocal
