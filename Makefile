.PHONY: bash tmux vim vim_plugins

bash:
	stow -v --dotfiles --target=${HOME} bash

tmux:
	stow -v --dotfiles --target=${HOME} tmux

vim:
	stow -v --dotfiles --target=${HOME} vim

vim_plugins:
	if [ ! -d ${HOME}/.vim/pack/vendor/start/nerdtree/ ]; then \
		git clone https://github.com/preservim/nerdtree.git ${HOME}/.vim/pack/vendor/start/nerdtree; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/nerdtree/doc" -c q; \
	fi
