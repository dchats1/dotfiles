.PHONY: bash tmux vim vim_plugins

bash:
	stow -v --dotfiles --target=${HOME} bash

tmux:
	stow -v --dotfiles --target=${HOME} tmux

vim:
	stow -v --dotfiles --target=${HOME} vim

vim_plugins:
	# NerdTREE
	if [ ! -d ${HOME}/.vim/pack/vendor/start/nerdtree/ ]; then \
		git clone https://github.com/preservim/nerdtree.git ${HOME}/.vim/pack/vendor/start/nerdtree; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/nerdtree/doc" -c q; \
	fi
	# AutoComplPop
	if [ ! -d ${HOME}/.vim/pack/vendor/start/AutoComplPop/ ]; then \
		git clone https://github.com/vim-scripts/AutoComplPop.git ${HOME}/.vim/pack/vendor/start/AutoComplPop; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/AutoComplPop/doc" -c q; \
	fi
	# VimWiki
	if [ ! -d ${HOME}/.vim/pack/vendor/start/vimwiki/ ]; then \
	  git clone https://github.com/vimwiki/vimwiki.git ${HOME}/.vim/pack/plugins/start/vimwiki; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/vimwiki/doc" -c q; \
	fi
