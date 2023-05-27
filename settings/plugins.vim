call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'santiagovrancovich/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mhinz/vim-signify'
Plug 'tjammer/focusedpanic.vim'
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'zacanger/angr.vim'
Plug 'ayu-theme/ayu-vim'

call plug#end()
