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
  Plug 'slashmili/alchemist.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " coc neovim
  " Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

  " utility plugins
  Plug 'voldikss/vim-floaterm'
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
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'aaronbieber/vim-quicktask'
  Plug 'vim-python/python-syntax'
  Plug 'fisadev/vim-isort'
  Plug 'xolox/vim-notes'
  Plug 'xolox/vim-misc'


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

" better python syntax highlight
let g:python_highlight_all = 1

" Ultisnips config
" let g:UltiSnipsExpandTrigger="<Leader>e"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" emmet config
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

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
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" Ag config to search for content only
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Mappings
let mapleader = "\<Space>"
nnoremap <Leader>o :GFiles<CR>
nnoremap <Leader>O :Files<CR>
nnoremap <Leader>f :BLines<CR>
nnoremap <Leader>g :Ag<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>a :NERDTreeFind<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>s :Gstatus<CR>
nnoremap <Leader>d :Gdiff<CR>
set diffopt+=vertical
nnoremap <Leader>j <C>]
nnoremap <Leader>b :Black<CR>

tnoremap <C-W><C-J> <C-\><C-n><C-W><C-J>
tnoremap <C-W><C-K> <C-\><C-n><C-W><C-K>
tnoremap <C-W><C-L> <C-\><C-n><C-W><C-L>
tnoremap <C-W><C-H> <C-\><C-n><C-W><C-H>

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


" gutengtags config
let g:gutentags_ctags_exclude = [
      \ '*.git', '*.svg', '*.hg',
      \ 'build',
      \ 'dist',
      \ '*sites/*/files/*',
      \ 'bin',
      \ 'node_modules',
      \ 'bower_components',
      \ 'cache',
      \ 'compiled',
      \ 'docs',
      \ 'example',
      \ 'bundle',
      \ 'vendor',
      \ '*.md',
      \ '*.html',
      \ '*.rst',
      \ '*-lock.json',
      \ '*.lock',
      \ '*bundle*.js',
      \ '*build*.js',
      \ '.*rc*',
      \ '*.json',
      \ '*.min.*',
      \ '*.map',
      \ '*.bak',
      \ '*.zip',
      \ '*.pyc',
      \ '*/__pycache__/*',
      \ '*.class',
      \ '*.sln',
      \ '*.Master',
      \ '*.csproj',
      \ '*.tmp',
      \ '*.csproj.user',
      \ '*.cache',
      \ '*.pdb',
      \ 'tags*',
      \ 'cscope.*',
      \ '*.css',
      \ '*.less',
      \ '*.scss',
      \ '*.exe', '*.dll',
      \ '*.mp3', '*.ogg', '*.flac',
      \ '*.swp', '*.swo',
      \ '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
      \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
      \ '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
      \ ]
