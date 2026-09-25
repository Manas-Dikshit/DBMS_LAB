@echo off
setlocal
cd /d "%~dp0"
set "DB_USER=%MYSQL_USER%"
if "%DB_USER%"=="" set "DB_USER=root"
mysql -u "%DB_USER%" -p < run_all.sql
if errorlevel 1 exit /b 1
echo All SQL files executed successfully.
