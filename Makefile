.PHONY: bash config plugins update

bash:
	stow -v --dotfiles --target=${HOME} bash

config:
	stow -v --dotfiles --target=${HOME}/.config dot-config

PLUGIN_PATH := ${XDG_CONFIG_HOME}/vim/pack/vendor/start/
PLUGINS := $(shell ls ${XDG_CONFIG_HOME}/vim/pack/vendor/start/)

update:
	@for plug in ${PLUGINS}; do \
		echo "Updating $$plug..."; \
		cd ${PLUGIN_PATH}/$$plug && git pull; \
	done

plugins:
	# AutoComplPop
	if [ ! -d ${PLUGIN_PATH}/AutoComplPop/ ]; then \
		git clone https://github.com/vim-scripts/AutoComplPop.git ${PLUGIN_PATH}/AutoComplPop; \
		vim -u NONE -c "helptags ${PLUGIN_PATH}/AutoComplPop/doc" -c q; \
	fi
	# fzf.vim
	if [ ! -d ${PLUGIN_PATH}/fzf.vim/ ]; then \
		git clone https://github.com/junegunn/fzf.vim.git ${PLUGIN_PATH}/fzf.vim; \
		vim -u NONE -c "helptags ${PLUGIN_PATH}/fzf.vim/doc" -c q; \
	fi
	# NerdTREE
	if [ ! -d ${PLUGIN_PATH}/nerdtree/ ]; then \
		git clone https://github.com/preservim/nerdtree.git ${PLUGIN_PATH}/nerdtree; \
		vim -u NONE -c "helptags ${PLUGIN_PATH}/nerdtree/doc" -c q; \
	fi
	# vim-airline
	if [ ! -d ${PLUGIN_PATH}/vim-airline/ ]; then \
	  git clone https://github.com/vim-airline/vim-airline.git ${PLUGIN_PATH}/vim-airline; \
		vim -u NONE -c "helptags ${PLUGIN_PATH}/vim-airline/doc" -c q; \
	fi
	# vim-airline-themes
	if [ ! -d ${PLUGIN_PATH}/vim-airline-themes/ ]; then \
	  git clone https://github.com/vim-airline/vim-airline-themes.git ${PLUGIN_PATH}/vim-airline-themes; \
		vim -u NONE -c "helptags ${PLUGIN_PATH}/vim-airline-themes/doc" -c q; \
	fi
	# VimWiki
	if [ ! -d ${PLUGIN_PATH}/vimwiki/ ]; then \
	  git clone https://github.com/vimwiki/vimwiki.git ${PLUGIN_PATH}/vimwiki; \
		vim -u NONE -c "helptags ${PLUGIN_PATH}/vimwiki/doc" -c q; \
	fi
	# vim-terraform
	if [ ! -d ${PLUGIN_PATH}/vim-terraform/ ]; then \
	  git clone https://github.com/hashivim/vim-terraform.git ${PLUGIN_PATH}/vim-terraform; \
		vim -u NONE -c "helptags ${PLUGIN_PATH}/vim-terraform/doc" -c q; \
	fi
