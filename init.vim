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
  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

  " coc neovim
  " Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}


  " utility plugins
  Plug 'liuchengxu/vim-which-key'
  Plug 'voldikss/vim-floaterm'
  Plug 'Shougo/echodoc'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'mhinz/vim-grepper'
  Plug 'vim-airline/vim-airline'
  Plug 'Townk/vim-autoclose'
  Plug 'w0rp/ale'
  Plug 'tpope/vim-surround'
  Plug 'sheerun/vim-polyglot'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'psf/black'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'heavenshell/vim-pydocstring'
  Plug 'heavenshell/vim-jsdoc'
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
  Plug 'vim-python/python-syntax'
  Plug 'fisadev/vim-isort'
  Plug 'xolox/vim-notes'
  Plug 'xolox/vim-misc'
  Plug 'liuchengxu/vista.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'simonsmith/material.vim'
  Plug 'jmcantrell/vim-virtualenv'

  " colorscheme
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()


" ale config
let g:ale_fixers = ['eslint']
let g:jsdoc_enable_es6=1
" Run both javascript and vue linters for vue files.
let b:ale_linter_aliases = ['javascript', 'vue']
" Select the eslint and vls linters.
let b:ale_linters = ['eslint', 'vls']


" colorscheme config
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme material
let g:airline_theme='material'
let g:material_terminal_italics = 1
set cursorline

" WhichKey config
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" NERDTree config
let NERDTreeShowHidden=1

let NERDTreeIgnore=['__pycache__', 'node_modules']

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/Users/leesutton/neovim/bin/python'
let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}

" better python syntax highlight
let g:python_highlight_all = 1

" virtualenv activation
let g:virtualenv_directory = '~/Library/Caches/pypoetry/virtualenvs/'

" notes
let g:notes_directories = ["~/notes/"]

" Ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:nvim_typescript#javascript_support = 1
let g:nvim_typescript#vue_support = 1
let g:nvim_typescript#type_info_on_hold = 1
let g:javascript_plugin_jsdoc = 1
" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "⇒"
" let g:javascript_conceal_underscore_arrow_function = "⇒"

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
command! -bang -nargs=+ -complete=dir Rag call fzf#vim#ag_raw(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Mappings
let mapleader = "\<Space>"
nnoremap <Leader>s :wa<CR>
nnoremap <Leader>o :GFiles<CR>
nnoremap <Leader>O :Files<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>T :Tags <C-R><C-W><CR>
nnoremap <Leader>b :BLines<CR>
nnoremap <Leader>f :Ag<CR>
nnoremap <Leader>F :Ag <C-R><C-W><CR>
nnoremap <Leader>r :Rg<CR>
nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>a :NERDTreeFind<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>g :Gstatus<CR>
nnoremap <Leader>l :ALEFix<CR>
nnoremap <Leader><Leader> :
nnoremap gd <C-]>
set diffopt+=vertical

nnoremap <Leader>j <C-d>
nnoremap <Leader>k <C-u>
nnoremap <Leader>w <C-w>

nnoremap <Leader>rf :source ~/.config/nvim/init.vim<CR>
:imap jj <Esc>

tnoremap <C-W><C-J> <C-\><C-n><C-W><C-J>
tnoremap <C-W><C-K> <C-\><C-n><C-W><C-K>
tnoremap <C-W><C-L> <C-\><C-n><C-W><C-L>
tnoremap <C-W><C-H> <C-\><C-n><C-W><C-H>

" .............................................................................
" mhinz/vim-grepper
" .............................................................................

let g:grepper={}
let g:grepper.tools=["rg"]

xmap gr <plug>(GrepperOperator)

" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>R
  \ :let @s='\<'.expand('<cword>').'\>'<CR>
  \ :Grepper -cword -noprompt<CR>
  \ :cfdo %s/<C-r>s//g \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

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
      \ '*.ipynb',
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

"'""""""""""""""""""""""""""""""""""""""""""""""
" vista config
"'""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>v :Vista<CR>
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
