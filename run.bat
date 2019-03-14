@echo off

IF NOT DEFINED FOO SET ROOT_DIR="C:\Users\Murugesh\Desktop\Projects\winscp-sftp-script\"
IF NOT DEFINED FOO SET SFTP_USER="SSH USER"
IF NOT DEFINED FOO SET SFTP_PWD="PASSWORD"
IF NOT DEFINED FOO SET SFTP_SERVER="YOUR IP"
IF NOT DEFINED FOO SET SFTP_SERVER_PATH="/tmp/"
IF NOT DEFINED FOO SET WINSCP_INSTALLATION_PATH="C:\Program Files (x86)\WinSCP\winscp.com"


%WINSCP_INSTALLATION_PATH% /script=%ROOT_DIR%winscp.txt /log=%ROOT_DIR%winscp.log"
if %ERRORLEVEL% neq 0 goto error
 
echo Upload succeeded, moving local files
move %ROOT_DIR%input\*.csv %ROOT_DIR%backup
exit /b 0
 
:error
echo Upload failed, keeping local files
exit /b 1