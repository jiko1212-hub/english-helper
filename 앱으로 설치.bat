@echo off
chcp 65001 >nul
setlocal

set "URL=https://jiko1212-hub.github.io/english-helper/"
set "CHROME="

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" set "CHROME=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"

echo ========================================================
echo  English Translator 를 앱으로 설치하기
echo ========================================================
echo.

if not defined CHROME (
  echo  크롬을 찾지 못했습니다.
  echo  크롬에서 아래 주소를 직접 열어 주세요.
  echo.
  echo    %URL%
  echo.
  pause
  exit /b 1
)

echo  크롬 창을 엽니다. 창이 뜨면:
echo.
echo    1) 주소창 오른쪽 끝의 [설치] 아이콘을 누르거나
echo    2) 오른쪽 위 [ : ] - 전송, 저장 및 공유 - 페이지를 앱으로 설치
echo.
echo  설치하면 시작 메뉴와 바탕화면에 아이콘이 생깁니다.
echo  그 아이콘으로 열면 주소창 없이 앱처럼 뜹니다.
echo.
echo  설치를 마치면 이 창은 닫으셔도 됩니다.
echo ========================================================
echo.

start "" "%CHROME%" --new-window "%URL%"
pause
