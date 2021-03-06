REM here you can add/remove/modify any programs that you want to start before running Rocket League
REM fix the paths to your stuff. If your installs are similar just replace \user\ with \{your_name}\
REM plugings_bots.cfg can have all plugins disabled except rlgym (I think, try it out)

REM start gyg
start "" /b "C:\Users\user\AppData\Local\Programs\badpanda-react\Gif Your Game.exe"
REM start overwolf
start "" /b "C:\Program Files (x86)\Overwolf\OverwolfLauncher.exe" "-from-desktop"
REM start RLTracker
start "" /b "C:\Program Files (x86)\Overwolf\OverwolfLauncher.exe" "-launchapp nonfnefnlcikmjkkdclbhpojenalpkcoipjjognm -from-desktop"
REM replace bot config with actual config for video settings
copy /b/v/y "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings_actual.ini" "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings.ini"
REM take your actual plugin file and put it in
copy /b/v/y "C:\Users\user\AppData\Roaming\bakkesmod\bakkesmod\cfg\plugins_actual.cfg" "C:\Users\user\AppData\Roaming\bakkesmod\bakkesmod\cfg\plugins.cfg"
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
REM save your existing settings back to _actual so they get updated with changes in game
copy /b/v/y "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings.ini" "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings_actual.ini"
copy /b/v/y "C:\Users\user\AppData\Roaming\bakkesmod\bakkesmod\cfg\plugins.cfg" "C:\Users\user\AppData\Roaming\bakkesmod\bakkesmod\cfg\plugins_actual.cfg"
REM put bot systemsettings back
copy /b/v/y "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings_bots.ini" "C:\Users\user\Documents\My Games\Rocket League\TAGame\Config\TASystemSettings.ini"
copy /b/v/y "C:\Users\user\AppData\Roaming\bakkesmod\bakkesmod\cfg\plugins_bots.cfg" "C:\Users\user\AppData\Roaming\bakkesmod\bakkesmod\cfg\plugins.cfg"
