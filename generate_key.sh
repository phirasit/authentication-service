openssl genrsa -des3 -out server.pass.key 2048
openssl rsa -passin pass:x -in server.pass.key -out server.key

openssl req -new -key server.key -out server.csr
openssl x509 -req -sha256 -days 365 -in server.csr -signkey server.key -out server.crt

# clean up
rm server.pass.key server.csr
