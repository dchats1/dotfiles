.PHONY: bash

backup:
	# TODO backup dotfiles with a date

bash:
	stow -v --dotfiles --target=${HOME} bash

tmux:

vim:
