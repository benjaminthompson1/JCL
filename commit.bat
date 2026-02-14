@echo off
rem Git commit and push script
rem Make sure you have set up credentials for automatic push.

echo Adding all changes...
git add .

rem Commit with a message including timestamp
set "timestamp=%date% %time%"
git commit -m "Automated commit: %timestamp%"

echo Pushing changes to remote...
git push

echo Commit and push complete.
pause
