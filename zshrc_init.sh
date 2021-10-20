ZSH=~/.oh-my-zsh/
SCRIPTPATH=~/gits/configs/
echo $SCRIPTPATH
git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH
cp ~/.zshrc ~/.zshrc.orig
ln -sf $SCRIPTPATH/.zshrc ~/
ln -sf $SCRIPTPATH/.zsh ~/
cp $SCRIPTPATH/.zshrc.env ~/
zshplgs=$ZSH/custom/plugins
echo plugin path: $zshplgs
git clone https://github.com/wting/autojump $zshplgs/autojump
cd $zshplgs/autojump
$zshplgs/autojump/install.py
cd ~
git clone https://github.com/zsh-users/zsh-autosuggestions.git $zshplgs/zsh-autosuggestions/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zshplgs/zsh-syntax-highlighting
git clone https://github.com/paulirish/git-open.git $zshplgs/git-open
vared -p 'chsh to zsh(y/n))?' -c _y
if [ $_y = 'y' ] || [ $_y = 'Y' ]; then
    chsh -s $(which zsh)
fi

