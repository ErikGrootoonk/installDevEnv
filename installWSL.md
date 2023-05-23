## add user erik  to sudoers

su
/sbin/usermod -aG sudo erik

## install packages

sudo apt update && upgrade -y

sudo apt install \
	curl \
	git



## configure vim

```
mkdir .vim

# install vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# install nodejs
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

cp <git/wsl>.vimrc ~/

```



## configure neovim

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim


mkdir -p ~/.config/nvim

cp ./init.vim  ~/.config/nvim


sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'



##sudo npm i -g yarn
## in Neovim:  PlugInstall
cd ~/.local/share/nvim/plugged/coc.nvim
yarn install

## enable coc tab completion
https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources

##install virtualbox guest additions

sudo apt install build-essential dkms linux-headers-$(uname -r)

#### mount guestadditions cdrom copy contents to a folder

sudo chmod +x VBoxLinuxAdditions.run

#### enable share connection with host machine

sudo adduser $USER vboxsf

## install AzureCLI

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash


## install VSCode

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt install code

## configure network wsl

edit /etc/wsl.conf  

[network]
generateResolvConf = false

in powershell:  
wsl -d Ubuntu --shutdown

start wsl
sudo touch /etc/resolv.conf

inhoud:
search prhc.lan
nameserver 194.53.14.11
nameserver 194.53.14.12
nameserver 8.8.8.8


/etc

### install plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim




