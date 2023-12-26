sudo apt update
sudo apt dist-upgrade
#sudo apt purge pulseaudio* pipewire*

cd ~/Downloads/
wget https://github.com/TeamRizu/OutFox/releases/download/OF4.19.0/OutFox-0.4.19-LTS-Linux-Rpi64bit-arm64v8-modern-date-20230415.tar.gz
gzip -cd OutFox-0.4.19-LTS-Linux-Rpi64bit-arm64v8-modern-date-20230415.tar.gz | tar xvf -
cd ~/Desktop/
ln -s ../Downloads/OutFox-alpha-0.4.19-arm64v8-modern-date-20230415 OutFox

cat | sudo tee /etc/xdg/autostart/OutFox.desktop <<EOF
#!/usr/bin/env xdg-open

[Desktop Entry]
Type=Application
Name=Project OutFox
Exec=/home/${USER}/Desktop/OutFox/OutFox
EOF

sudo chmod a+x /etc/xdg/autostart/OutFox.desktop

echo "Reboot now and OutFox will start automagically"
