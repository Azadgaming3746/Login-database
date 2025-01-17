@echo off
title Login Data Base
color 0A
echo.
echo.
echo ----------------------
echo      Data Base
echo ----------------------
echo.
echo.
echo This is a data base where you can store your logins.
echo To access these logins you will have to authenticate.
echo.
echo.
echo 1) Authenticate
echo 2) Exit

set /p choice="Choose an option (1 or 2): "

if "%choice%"=="1" goto authenticator
if "%choice%"=="2" goto door

:authenticator
set /p pass="New Password: "
if "%pass%" NEQ "12345" exit

echo.
echo yes) Show data
echo no) Don't show

set /p showdata="Choose an option (yes or no): "

if /I "%showdata%"=="yes" goto channels
if /I "%showdata%"=="no" goto door

:channels
echo Pick the data you need.
echo.
echo discord
echo youtube
echo netflix
echo twitter

set /p service="Choose an option (discord, youtube, netflix or twitter): "
echo You chose: %service%  // Debugging line to see what was chosen

if /I "%service%"=="discord" goto discordlogin
if /I "%service%"=="youtube" goto youtubelogin
if /I "%service%"=="netflix" goto netflixlogin
if /I "%service%"=="twitter" goto twitterlogin

echo Invalid choice, returning to channels  // Add this to handle invalid input
goto channels

:discordlogin
echo.
echo Discord Login:
echo Email: example@gmail.com
echo Password: examplepassword
pause
goto door

:youtubelogin
echo.
echo YouTube Login:
echo Email: example@gmail.com
echo Password: examplepassword
pause
goto door

:netflixlogin
echo.
echo Netflix Login:
echo Email: example@gmail.com
echo Password: examplepassword
pause
goto door

:twitterlogin
echo.
echo Twitter Login:
echo Email: example@gmail.com
echo Password: examplepassword
pause
goto door

:door
exit