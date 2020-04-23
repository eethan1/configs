ZSH=~/.oh-my-zsh/
SCRIPTPATH=$(dirname $(readlink -f "$0"))
echo $SCRIPTPATH
git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH
cp ~/.zshrc ~/.zshrc.orig
ln -sf $SCRIPTPATH/.zshrc ~/
ln -sf $SCRIPTPATH/.zsh ~/ 
chsh -s $(which zsh)
zshplgs=$ZSH/custom/plugins
echo plugin path: $zshplgs
git clone https://github.com/wting/autojump $zshplgs/autojump
cd $zshplgs/autojump
$zshplgs/autojump/install.py
cd ~
git clone https://github.com/zsh-users/zsh-autosuggestions.git $zshplgs/zsh-autosuggestions/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zshplgs/zsh-syntax-highlighting
git clone https://github.com/paulirish/git-open.git $zshplgs/git-open

