echo "Signing"
openssl x509 -CA generated/ca.crt -CAkey generated/ca.key -CAcreateserial -req -in generated/server.csr -out generated/server-signed.crt -extfile conf/signing-ext.cnf -days 3650

cd generated
copy ca.crt + server-signed.crt server-cert-chain.crt
cd ..

echo "Creating Server p12 file"
openssl pkcs12 -inkey generated/server.key -in generated/server-cert-chain.crt -export -out generated/server.p12 -password pass:changeit

echo "Printing Server p12 file"
openssl pkcs12 -info -nodes -in generated/server.p12 -password pass:changeit

echo "Creating p12 file"
keytool -v -importkeystore -srckeystore generated/server.p12 -destkeystore generated/server.jks -srcstoretype PKCS12 -deststoretype JKS -srcstorepass changeit -deststorepass changeit
keytool -list -v -keystore generated/server.jks -storepass changeit

