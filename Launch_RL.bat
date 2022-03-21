REM here you can add/remove/modify any programs that you want to start before running Rocket League

REM start gyg
start "" /b "C:\Users\user\AppData\Local\Programs\badpanda-react\Gif Your Game.exe"
REM start overwolf
start "" /b "C:\Program Files (x86)\Overwolf\OverwolfLauncher.exe" "-from-desktop"
REM start RLTracker
start "" /b "C:\Program Files (x86)\Overwolf\OverwolfLauncher.exe" "-launchapp nonfnefnlcikmjkkdclbhpojenalpkcoipjjognm -from-desktop"
REM replace bot config with actual config for video settings
copy /b/v/y "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings_actual.ini" "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings.ini"
REM start rocket league
start "" /b com.epicgames.launcher://apps/9773aa1aa54f4f7b80e44bef04986cea%%3A530145df28a24424923f5828cc9031a1%%3ASugar?action=launch&silent=true
REM start "" /W /B "D:\Program Files\Epic Games\rocketleague\Binaries\Win64\RocketLeague.exe"
REM when rocket league closes, close everything
:a
timeout /t 120 /nobreak
tasklist /fi "ImagineName eq RocketLeague.exe" /fo csv 2>NUL | find /I "RocketLeague.exe">nul
if "%ERRORLEVEL%"=="0" goto a

REM kill anything you started that you don't want after Rocket League ends, put any settings back
taskkill /IM "Gif Your Game.exe" /F /T
taskkill /IM "Overwolf.exe" /F /T
REM put bot systemsettings back
copy /b/v/y "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings_bots.ini" "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings.ini"

