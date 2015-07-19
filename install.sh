for configDir in fish; do
    test -d ~/.$configDir/ || ln -sfT "$(pwd)/$configDir/" ~/.config/$configDir
done

for file in tmux.conf cvsignore Xmodmap xsession xmobarrc bashrc bash_profile shellrc vimrc gitconfig gtkrc-2.0 zshrc emacs screenrc toprc; do
	ln -sf "$(pwd)/$file" ~/.$file
done

for dir in emacs.d screen-bin xmonad; do
    test -d ~/.$dir/ || ln -sfT "$(pwd)/$dir/" ~/.$dir
done

ln -sfT "$(pwd)/vim_local/" ~/vim_local

# Install oh-my-fish. Not completely convinced this is the best way to do it.
curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish | fish

sh installGoPackages.sh

cd emacs.d
sh install.sh

