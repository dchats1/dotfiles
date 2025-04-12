.PHONY: bash tmux vim vim_plugins

bash:
	stow -v --dotfiles --target=${HOME} bash

config:
	stow -v --dotfiles --target=${HOME} dot-config

tmux:
	stow -v --dotfiles --target=${HOME} tmux

vim:
	stow -v --dotfiles --target=${HOME} vim

plugins:
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
	  git clone https://github.com/vimwiki/vimwiki.git ${HOME}/.vim/pack/vendor/start/vimwiki; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/vimwiki/doc" -c q; \
	fi
	# mim-lsp
	if [ ! -d ${HOME}/.vim/pack/vendor/start/vim-lsp/ ]; then \
	  git clone https://github.com/prabirshrestha/vim-lsp.git ${HOME}/.vim/pack/vendor/start/vim-lsp; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/vim-lsp/doc" -c q; \
	fi
	# vim-lsp-settings
	if [ ! -d ${HOME}/.vim/pack/vendor/start/vim-lsp-settings/ ]; then \
	  git clone https://github.com/mattn/vim-lsp-settings.git ${HOME}/.vim/pack/vendor/start/vim-lsp-settings; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/vim-lsp-settings/doc" -c q; \
	fi
