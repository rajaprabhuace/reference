
echo "Creating CSR"
openssl req -newkey rsa:2048 -nodes -keyout generated/server.key -days 365 -out generated/server.csr -config conf/server-csr-ext.cnf
