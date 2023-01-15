# Installing Unity

curl -fsSL https://hub.unity3d.com/linux/keys/public | sudo gpg --dearmor -o /usr/share/keyrings/unityhub-apt.gpg

echo "deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/unityhub-apt.gpg] https://hub.unity3d.com/linux/repos/deb stable main" | sudo tee /etc/apt/sources.list.d/unityhub.list > /dev/null

sudo apt update

sudo apt install unityhub
