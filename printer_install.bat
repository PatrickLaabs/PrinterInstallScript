@echo off

:: set the ip adr / hostname of your printer 
SET varIp="127.0.0.1"

:: Driver Name specified inside the .inf file
SET varDriver="TOSHIBA Generic Printer XL"

:: Path to the .inf file - in this case, the driver is located inside the same folder as this script
:: in this case, you don't need to use the full path - just starting from the root
SET varDriverPath="%~dp0\Toshiba Generic Driver 2.13.1.0 XL\x86\Drivers\Print\GDI\TSUD1p40.inf"

:: Set your printer name that will be displayed to the user
SET varDisplayName="Printer Display Name"

:: Create TCP/IP port
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\de-DE\prnport.vbs -a -r %varIp% -o raw -n 9100 -h %varIp%

:: Install printer
rundll32 printui.dll,PrintUIEntry /if /n %varDisplayName% /b %varDisplayName% /f %varDriverPath% /r %varIp% /m %varDriver%
