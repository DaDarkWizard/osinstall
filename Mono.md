sudo apt install gnupg ca-certificates

cat /home/dasker/Downloads/text.txt | sudo gpg --dearmor -o /usr/share/keyrings/mono-apt.gpg

echo "deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/mono-apt.gpg] https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list > /dev/null

sudo apt update

sudo apt install mono-devel


sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys  
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update