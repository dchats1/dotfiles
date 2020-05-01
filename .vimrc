python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
colo desert
set autoindent
set noswapfile
" Global tab width.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set colorcolumn=80
