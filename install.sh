for file in tmux.conf cvsignore Xmodmap xsession xmobarrc xmonad bashrc bash_profile shellrc vimrc gitconfig gtkrc-2.0 zshrc emacs screenrc toprc; do
	ln -sf "$(pwd)/$file" ~/.$file
done

for dir in vim oh-my-zsh oh-my-zsh-custom emacs.d screen-bin; do
    test -d ~/.$dir/ || ln -sfT "$(pwd)/$dir/" ~/.$dir
done

#cd autojump
#./install.sh --local
