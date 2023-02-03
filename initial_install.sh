echo "Setting up"
if ! command -v apt &> /dev/null
then
    echo "apt not installed!"
    exit
fi

if ! command -v snap &> /dev/null
then
    echo "snap not installed!"
    exit
fi

if ! command -v vim &> /dev/null
then
    echo "Installing vim"
    sudo apt install -y vim &> /dev/null
    cp ~/source/repos/osinstall/config_files/.vimrc ~/.vimrc
    echo "Vim installed"
    exit
fi

if ! command -v code &> /dev/null
then
    echo "Installing vscode"
    sudo snap install -y code &> /dev/null
    echo "vscode installed"
    exit
fi

if ! command -v curl &> /dev/null
then
    echo "Installing curl"
    sudo apt install -y curl &> /dev/null
    echo "Vim installed"
    exit
fi

if ! command -v vlc &> /dev/null
then
    echo "Installing vlc media player"
    sudo apt install -y vlc &> /dev/null
    echo "VLC installed"
    exit
fi

echo "Doing some git setup"
git config --global user.email "dtmasker@mtu.edu" &> /dev/null
git config --global user.name "Daniel Masker" &> /dev/null
git config --global credential.helper store &> /dev/null
echo "Git setup"
