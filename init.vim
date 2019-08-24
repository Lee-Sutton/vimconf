call plug#begin('~/.config/nvim/_plugins')
  " Deoplete setup
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  if has('nvim')
  else
    let g:black_virtualenv="~/.vim_black"
  endif

  " Deoplete plugins
  Plug 'deoplete-plugins/deoplete-jedi'

  " coc neovim
  " Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

  " utility plugins
  Plug 'Shougo/echodoc'
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
  Plug 'psf/black'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'heavenshell/vim-pydocstring'
  Plug 'mtth/scratch.vim'
  Plug 'kassio/neoterm'
  Plug 'mindriot101/vim-yapf'
  Plug 'airblade/vim-gitgutter'
  Plug 'posva/vim-vue'
  Plug 'SidOfc/mkdx'
  Plug 'junegunn/goyo.vim'
  Plug 'mattn/emmet-vim'

  " colorscheme
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()


" colorscheme config
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" NERDTree config
let NERDTreeShowHidden=1

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/Users/leesutton/neovim/bin/python'
let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}

" Show linenumbers
set number
set ruler

" copy to clipboard
set clipboard=unnamed

" Set Proper Tabs
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set ignorecase
set smartcase
set wrap!

" better window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

" Markdown config
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'map': { 'prefix': '<leader>', 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
let g:polyglot_disabled = ['markdown'] " for vim-polyglot users, it loads Plasticboy's markdown
                                       " plugin which unfortunately interferes with mkdx list indentation.

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif
