@echo off

IF NOT DEFINED ROOT_DIR SET ROOT_DIR="C:\Users\Murugesh\Desktop\Projects\winscp-sftp-script\"
IF NOT DEFINED SFTP_USER SET SFTP_USER="clustrex"
IF NOT DEFINED SFTP_PWD SET SFTP_PWD="KernPike3$"
IF NOT DEFINED SFTP_SERVER SET SFTP_SERVER="192.168.1.100"
IF NOT DEFINED SFTP_SERVER_PATH SET SFTP_SERVER_PATH="/tmp/"
IF NOT DEFINED WINSCP_INSTALLATION_PATH SET WINSCP_INSTALLATION_PATH="C:\Program Files (x86)\WinSCP\winscp.com"


%WINSCP_INSTALLATION_PATH% /script=%ROOT_DIR%winscp.txt /log=%ROOT_DIR%winscp.log"
if %ERRORLEVEL% neq 0 goto error
 
echo Upload succeeded, moving local files
move %ROOT_DIR%input\*.csv %ROOT_DIR%backup
exit /b 0
 
:error
echo Upload failed, keeping local files
exit /b 1