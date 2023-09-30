## add user erik to sudoers

su
/sbin/usermod -aG sudo erik

## install packages

sudo apt update && upgrade -y

## configure vim

```
mkdir .vim
mkdir .vim/backup
mkdir .vim/swap
mkdir .vim/undo
# install vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# install nodejs
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update && sudo apt-get install nodejs -y

# create symbolic link to  <git/installDevEnv/dotfiles/.vimrc> from ~
ln -s /mnt/c/pgit/installDevEnv/dotfiles/.vimrc .vimrc


# Coc
:CocInstall coc-yaml
:CocInstall coc-html-css-support
:CocInstall coc-python

# tmux
link tmux dot file

ln -s /pgit/installDevEnv/dotfiles/.tmux.conf .
# install tmux plugin manager
https://github.com/tmux-plugins/tpm



## configure neovim

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim


mkdir -p ~/.config/nvim

cd  ~/.config/nvim
ln -s /mnt/c/pgit/installDevEnv/dotfiles/init.vim .

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







```
