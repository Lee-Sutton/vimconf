call plug#begin('~/.config/nvim/_plugins')
  " Deoplete setup
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  " Deoplete plugins
  Plug 'deoplete-plugins/deoplete-jedi'

  " Misc plugins
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
call plug#end()

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/Users/leesutton/neovim/bin/python'

let mapleader = "\<Space>"
