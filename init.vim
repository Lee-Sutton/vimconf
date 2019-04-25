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
  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

  " utility plugins
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'Townk/vim-autoclose'
  Plug 'w0rp/ale'
  Plug 'tpope/vim-surround'
  Plug 'sheerun/vim-polyglot'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'ambv/black'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'heavenshell/vim-pydocstring'
  Plug 'mtth/scratch.vim'

  " colorscheme
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()


" colorscheme config
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/Users/leesutton/neovim/bin/python'
let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}

" Show linenumbers
set number
set ruler

" Set Proper Tabs
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set ignorecase
set smartcase

" Mappings
let mapleader = "\<Space>"
nnoremap <Leader>o :GFiles<CR>
nnoremap <Leader>O :Files<CR>
nnoremap <Leader>f :BLines<CR>
nnoremap <Leader>g :Ag<CR>
nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>a :NERDTreeFind<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>s :Gstatus<CR>
nnoremap <Leader>b :Black<CR>
nnoremap gd <C>]


" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif
