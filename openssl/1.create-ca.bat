rmdir /S /Q generated
mkdir generated
echo "Creating Root CA"
openssl req -x509 -newkey rsa:2048 -nodes -keyout generated/ca.key -days 3650 -out generated/ca.crt -config conf/ca-ext.cnf

echo "Creating truststore"
keytool -import -noprompt -trustcacerts -alias ca -file generated/ca.crt -keystore generated/truststore.jks -storepass changeit -keypass changeit
keytool -list -v -keystore generated/truststore.jks -storepass changeit
