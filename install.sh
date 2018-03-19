#!/bin/sh
#########################################
# Installing dotfiles			#
#########################################

# Assume the dotfile directory is ~/dotfiles

# Todo: Change to submodules instead of manually cloning? 

#########################################
# Install zsh				#
#########################################

# get zsh and oh-my-zsh
sudo apt-get install zsh tmux powerline tig htop fonts-powerline
chsh -s $(which zsh)
# Automatic installation of oh my zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/robbyrussell/oh-my-zsh.git

echo "${BLUE}Looking for an existing zsh config...${NORMAL}\n"
    if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]; then
    	printf "${YELLOW}Found ~/.zshrc.${NORMAL} ${GREEN}Backing up to ~/.zshrc.pre-oh-my-zsh${NORMAL}\n";
    mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
fi

# echo "source ~/dotfiles/.zshrc" > ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git




#########################################
# Install Vim 8				#
#########################################


git clone https://github.com/vim/vim.git
cd vim
# install terminal library?
./configure || sudo apt-get install ncurses-dev
./configure
make
sudo make install
cd ../

# Setup Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#########################################
# Create Symlinks			#
#########################################

ln -sv "~/dotfiles/.vimrc" ~
ln -sv "~/dotfiles/.zshrc" ~
ln -sv "~/dotfiles/.tmux.conf" ~
