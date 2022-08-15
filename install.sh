# install packages

sudo apt update && upgrade -y

sudo apt install \
	curl \
	neovim\
	git



# configure neovim

mkdir -p ~/.config/nvim

cp ./init.vim  ~/.config/nvim


sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
       
#install virtualbox guest additions

sudo apt install build-essential dkms linux-headers-$(uname -r)

## mount guestadditions cdrom copy contents to a folder

sudo chmod +x VBoxLinuxAdditions.run

## enable share connection with host machine

sudo adduser $USER vboxsf

# install AzureCLI

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash


#install VSCode

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt install code






