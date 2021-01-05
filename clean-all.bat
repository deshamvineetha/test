@echo off
cls
:REM : delete chromedriver process
tasklist /fi "imagename eq chromedriver.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "chromedriver.exe"

:REM : delete GeckoDriver process
tasklist /fi "imagename eq geckodriver.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "geckodriver.exe"

:REM : delete IEDriver process
tasklist /fi "imagename eq IEDriverServer.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "IEDriverServer.exe"

:REM : delete chrome process
tasklist /fi "imagename eq chrome.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "chrome.exe"

:REM : delete FireFox process
tasklist /fi "imagename eq firefox.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "firefox.exe"


:REM : delete IE process
tasklist /fi "imagename eq iexplore.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "iexplore.exe"



del /s /f /q %windir%\temp\*.*
rd /s /q %windir%\temp
md %windir%\temp
del /s /f /q %windir%\Prefetch\*.*
rd /s /q %windir%\Prefetch
md %windir%\Prefetch
del /s /f /q %windir%\system32\dllcache\*.*
rd /s /q %windir%\system32\dllcache
md %windir%\system32\dllcache
del /s /f /q "%SysteDrive%\Temp"\*.*
rd /s /q "%SysteDrive%\Temp"
md "%SysteDrive%\Temp"
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
del /s /f /q "%USERPROFILE%\Local Settings\History"\*.*
rd /s /q "%USERPROFILE%\Local Settings\History"
md "%USERPROFILE%\Local Settings\History"
del /s /f /q "%USERPROFILE%\Local Settings\Temporary Internet Files"\*.*
rd /s /q "%USERPROFILE%\Local Settings\Temporary Internet Files"
md "%USERPROFILE%\Local Settings\Temporary Internet Files"
del /s /f /q "%USERPROFILE%\Local Settings\Temp"\*.*
rd /s /q "%USERPROFILE%\Local Settings\Temp"
md "%USERPROFILE%\Local Settings\Temp"
del /s /f /q "%USERPROFILE%\Recent"\*.*
rd /s /q "%USERPROFILE%\Recent"
md "%USERPROFILE%\Recent"
del /s /f /q "%USERPROFILE%\Cookies"\*.*
rd /s /q "%USERPROFILE%\Cookies"
md "%USERPROFILE%\Cookies"
:REM del /s /f /q C:\AutomationTesting\Results\*.*
:REM rd /s /q C:\AutomationTesting\Results\
:REM mkdir C:\AutomationTesting\Results