ipconfig /flushdns
netstat -a -o -n
taskkill /F /PID 3004

set MAVEN_OPTS=-agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n
