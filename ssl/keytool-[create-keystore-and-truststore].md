CLS

REM Create Self-Signed Certificate and Trust Store from it.

keytool -genkey -keyalg RSA -keysize 2048 -alias localhost -keystore localhost.jks -storepass changeit -keypass changeit -validity 1825 -dname "CN=localhost, OU=Retails, O=Quantum Bazaar, L=Chennai, C=IN"

keytool -export -alias localhost -file localhost.crt -keystore localhost.jks -storepass changeit -keypass changeit

keytool -import -noprompt -trustcacerts -alias localhost -file localhost.crt -keystore localhost-truststore.jks -storepass changeit -keypass changeit

REM Print localhost.crt
keytool -printcert -v -file localhost.crt

REM Print localhost-truststore.jks 
keytool -list -v -keystore localhost-truststore.jks -storepass changeit -keypass changeit
