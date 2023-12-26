sudo apt update
sudo apt dist-upgrade
#sudo apt purge pulseaudio* pipewire*

cd ~/Downloads/
wget https://github.com/TeamRizu/OutFox/releases/download/OF5.0.0-042/OutFox-alpha-0.5.0-pre042-Raspberry-Pi-Linux-18.04-arm64-arm64v8-modern-date-20231225.tar.gz
gzip -cd OutFox-alpha-0.5.0-pre042-Raspberry-Pi-Linux-18.04-arm64-arm64v8-modern-date-20231225.tar.gz | tar xvf -
cd ~/Desktop/
[ -L OutFox ] && mv OutFox OutFox-`date +%Y%m%d%H%M%S`
ln -s ../Downloads/OutFox-alpha-0.5.0-pre042-18.04-arm64-arm64v8-modern-date-20231225/ OutFox

cat | sudo tee /etc/xdg/autostart/OutFox.desktop <<EOF
#!/usr/bin/env xdg-open

[Desktop Entry]
Type=Application
Name=Project OutFox
Exec=/home/${USER}/Desktop/OutFox/OutFox
EOF

sudo chmod a+x /etc/xdg/autostart/OutFox.desktop

echo "Reboot now and OutFox will start automagically"
