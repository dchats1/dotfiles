.PHONY: bash plugins tmux update vim

bash:
	stow -v --dotfiles --target=${HOME} bash

config:
	stow -v --dotfiles --target=${HOME} dot-config

tmux:
	stow -v --dotfiles --target=${HOME} tmux

vim:
	stow -v --dotfiles --target=${HOME} vim

PLUGIN_PATH := ${HOME}/.vim/pack/vendor/start/
PLUGINS := $(shell ls ${HOME}/.vim/pack/vendor/start/)

update:
	@for plug in ${PLUGINS}; do \
		echo "Updating $$plug..."; \
		cd ${HOME}/.vim/pack/vendor/start/$$plug && git pull; \
	done

plugins:
	# AutoComplPop
	if [ ! -d ${HOME}/.vim/pack/vendor/start/AutoComplPop/ ]; then \
		git clone https://github.com/vim-scripts/AutoComplPop.git ${HOME}/.vim/pack/vendor/start/AutoComplPop; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/AutoComplPop/doc" -c q; \
	fi
	# fzf.vim
	if [ ! -d ${HOME}/.vim/pack/vendor/start/fzf.vim/ ]; then \
		git clone https://github.com/junegunn/fzf.vim.git ${HOME}/.vim/pack/vendor/start/fzf.vim; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/fzf.vim/doc" -c q; \
	fi
	# NerdTREE
	if [ ! -d ${HOME}/.vim/pack/vendor/start/nerdtree/ ]; then \
		git clone https://github.com/preservim/nerdtree.git ${HOME}/.vim/pack/vendor/start/nerdtree; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/nerdtree/doc" -c q; \
	fi
	# vim-airline
	if [ ! -d ${HOME}/.vim/pack/vendor/start/vim-airline/ ]; then \
	  git clone https://github.com/vim-airline/vim-airline.git ${HOME}/.vim/pack/vendor/start/vim-airline; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/vim-airline/doc" -c q; \
	fi
	# vim-airline-themes
	if [ ! -d ${HOME}/.vim/pack/vendor/start/vim-airline-themes/ ]; then \
	  git clone https://github.com/vim-airline/vim-airline-themes.git ${HOME}/.vim/pack/vendor/start/vim-airline-themes; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/vim-airline-themes/doc" -c q; \
	fi
	# vim-fugitive
	if [ ! -d ${HOME}/.vim/pack/vendor/start/vim-fugitive/ ]; then \
		git clone https://github.com/tpope/vim-fugitive.git ${HOME}/.vim/pack/vendor/start/vim-fugitive; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/fugitive/doc" -c q; \
	fi
	# VimWiki
	if [ ! -d ${HOME}/.vim/pack/vendor/start/vimwiki/ ]; then \
	  git clone https://github.com/vimwiki/vimwiki.git ${HOME}/.vim/pack/vendor/start/vimwiki; \
		vim -u NONE -c "helptags ${HOME}/.vim/pack/vendor/start/vimwiki/doc" -c q; \
	fi
