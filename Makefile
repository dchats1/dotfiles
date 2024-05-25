.PHONY: bash tmux vim

backup:
	# TODO backup dotfiles with a date

bash:
	stow -v --dotfiles --target=${HOME} bash

tmux:
	stow -v --dotfiles --target=${HOME} tmux

vim:
	stow -v --dotfiles --target=${HOME} vim
