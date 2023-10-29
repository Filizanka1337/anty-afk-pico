@echo off
setlocal enabledelayedexpansion

set url=https://media.tenor.com/CzW0P5EOQwoAAAAC/jp2gmd-pope.gif
set window_title=Google Chrome

for /l %%i in (1,1,10) do (
    start chrome "%url%"
    ping localhost -n 2 > nul
)

:loop
    for /f "tokens=1,2" %%a in ('wmic desktopmonitor get screenheight^,screenwidth /value ^| find "="') do (
        if "%%a"=="ScreenHeight" set /a max_y=%%b-100
        if "%%a"=="ScreenWidth" set /a max_x=%%b-100
    )

    for /l %%i in (1,1,10) do (
        set /a x=!random! %% max_x
        set /a y=!random! %% max_y
        nircmd win move stitle "%window_title%" !x! !y!
        ping localhost -n 2 > nul
    )
goto loop