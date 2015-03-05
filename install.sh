for configDir in fish; do
    test -d ~/.$configDir/ || ln -sfT "$(pwd)/$configDir/" ~/.config/$configDir
done

for file in tmux.conf cvsignore Xmodmap xsession xmobarrc bashrc bash_profile shellrc vimrc gitconfig gtkrc-2.0 zshrc emacs screenrc toprc; do
	ln -sf "$(pwd)/$file" ~/.$file
done

for dir in vim oh-my-zsh oh-my-zsh-custom emacs.d screen-bin xmonad; do
    test -d ~/.$dir/ || ln -sfT "$(pwd)/$dir/" ~/.$dir
done

#cd autojump
#./install.sh --local

cd emacs.d/site-lisp/

if [ ! -d "dash.el.git" && "$(ls -A dash.el.git)"]; then
    git clone https://github.com/magnars/dash.el.git
    mv dash.el dash.el.gitlibrary
fi

if [ ! -d "f.el.gitlibrary" && "$(ls -A f.el.gitlibrary)"]; then
    git clone https://github.com/rejeep/f.el.git
    mv f.el f.el.gitlibrary
fi

if [ ! -d "flycheck" && "$(ls -A flycheck)"]; then
    git clone https://github.com/flycheck/flycheck.git
fi

if [ ! -d "haskell-mode" && "$(ls -A haskell-mode)"]; then
    git clone https://github.com/haskell/haskell-mode.git
fi

if [ ! -d "s.el.gitlibrary" && "$(ls -A s.el.gitlibrary)"]; then
    git clone https://github.com/magnars/s.el.git
    mv s.el s.el.gitlibrary
fi

cd -
