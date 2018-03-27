#!/bin/sh
#########################################
# Installing dotfiles			#
#########################################

# Assume the dotfile directory is ~/dotfiles

# Todo: Change to submodules instead of manually cloning? 
# Make Powerline optional?

if [ $(uname) = "Darwin" ]; then MAC=1; else MAC=""; fi;
if [ $MAC ]
then
    echo "Running install on MacOS, using brew, etc..."
    PKG_MGR="brew"
else
    echo "Running install al Linux, using apt, etc..."
    PKG_MGR="apt"
fi

#########################################
# Install Common Packages		#
#########################################
                                        
# get zsh and oh-my-zsh
PKGS="zsh tmux powerline tig htop fonts-powerline python3 python3-pip"
if [ $MAC ]
then
    sudo apt-get install $PKGS
else
    brew install $PKGS
fi

#########################################
# Install zsh				#
#########################################

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

ln -sv "$HOME/dotfiles/.zshrc" ~
ln -sv "$HOME/dotfiles/.vimrc" ~
ln -sv "$HOME/dotfiles/.aliases.sh" ~
ln -sv "$HOME/dotfiles/.functions.sh" ~
ln -sv "$HOME/dotfiles/.tmux.conf" ~
touch ~/.untracked_aliases.sh
