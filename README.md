ipconfig /flushdns  
netstat -a -o -n  
taskkill /F /PID 3004  
wmic bios get serialnumber  
hostname  
inetmgr  
inetcpl.cpl  
certmgr.msc  
appwiz.cpl


### PowerShell
Get-Content sample.log –Wait -Tail 100  
Get-Content sample.log -Wait | where { $_ -match "WARNING" }