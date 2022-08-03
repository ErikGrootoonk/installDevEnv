# install packages

sudo apt update && upgrade -y

sudo apt install \
	curl \
	neovim\



# configure neovim

mkdir -p ~/.config/nvim

cp ./init.vim  ~/.config/nvim


sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
