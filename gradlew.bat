@echo off
set VERSION=8.9
set BASE=%USERPROFILE%\.gradle\wrapper\dists\gradle-%VERSION%-bin\local
set GRADLE_HOME=%BASE%\gradle-%VERSION%
if not exist "%GRADLE_HOME%\bin\gradle.bat" (
  if not exist "%BASE%" mkdir "%BASE%"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "$ProgressPreference='SilentlyContinue'; Invoke-WebRequest https://services.gradle.org/distributions/gradle-%VERSION%-bin.zip -OutFile '%BASE%\gradle-%VERSION%-bin.zip'"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Force '%BASE%\gradle-%VERSION%-bin.zip' '%BASE%'"
)
call "%GRADLE_HOME%\bin\gradle.bat" %*
