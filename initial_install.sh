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
