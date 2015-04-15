for configDir in fish; do
    test -d ~/.$configDir/ || ln -sfT "$(pwd)/$configDir/" ~/.config/$configDir
done

for file in tmux.conf cvsignore Xmodmap xsession xmobarrc bashrc bash_profile shellrc vimrc gitconfig gtkrc-2.0 zshrc emacs screenrc toprc; do
	ln -sf "$(pwd)/$file" ~/.$file
done

for dir in vim oh-my-zsh oh-my-zsh-custom emacs.d screen-bin xmonad; do
    test -d ~/.$dir/ || ln -sfT "$(pwd)/$dir/" ~/.$dir
done


# Install oh-my-fish. Not completely convinced this is the best way to do it.
curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish | fish

cd emacs.d
sh install.sh

