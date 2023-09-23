@echo off
setlocal enabledelayedexpansion

cd "%~dp0"

for %%F in (*.*) do (
    set "filename=%%~nF"
    set "extension=%%~xF"
    set "new_filename=!filename:~0,-1!!extension!"
    ren "%%F" "!new_filename!"
)

endlocal
