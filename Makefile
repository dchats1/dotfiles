.PHONY: bash tmux vim

bash:
	stow -v --dotfiles --target=${HOME} bash

tmux:
	stow -v --dotfiles --target=${HOME} tmux

vim:
	stow -v --dotfiles --target=${HOME} vim
