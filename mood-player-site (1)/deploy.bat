@echo off
cd /d "%~dp0"
where node >nul 2>nul || (echo Node.js is missing. Install the LTS version from https://nodejs.org, then run this file again. & pause & exit /b)
call npm i -g vercel
echo.
echo A browser window may open so you can log in to Vercel. Log in, then come back here.
call vercel --prod --yes
echo.
echo Done. Your live link is printed above (it ends in .vercel.app).
pause
