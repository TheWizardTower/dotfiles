for file in xinitrc xmobarrc bashrc bash_aliases vimrc vim gitconfig; do
	ln -sf "$(pwd)/$file" ~/.$file
done
