#### WINSCP Script to upload files to target server
1. Kindly update these variables 

    IF NOT DEFINED FOO SET ROOT_DIR="C:\Users\Murugesh\Desktop\Projects\winscp-sftp-script\"
IF NOT DEFINED FOO SET SFTP_USER="SSH USER"
IF NOT DEFINED FOO SET SFTP_PWD="PASSWORD"
IF NOT DEFINED FOO SET SFTP_SERVER="YOUR IP"
IF NOT DEFINED FOO SET SFTP_SERVER_PATH="/tmp/"
IF NOT DEFINED FOO SET WINSCP_INSTALLATION_PATH="C:\Program Files (x86)\WinSCP\winscp.com"
2. Import windows task file that configured to run every min.
3. For logs refer winscp.log file in project root directory.
