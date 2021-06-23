
" ===========================Need to check out Tabularizes help page really
" ===========================nifty plugin :h Tabularize.txt

set nocompatible
filetype indent plugin on
syntax on

set path+=**
set wildmenu

" also install pnvim with pip for python plugin support
" need to install xclip or whatever the wayland alternative is
" for nvim to copy to and from the system clipboard
set clipboard+=unnamedplus

set hidden
set nohlsearch
set noerrorbells
set smartcase
set number relativenumber
set laststatus=2
set noshowmode
set nowrap
set termguicolors
set scrolloff=4
set ruler
set noswapfile
set incsearch
set splitbelow 
set splitright
" set signcolumn=yes
set undodir=$HOME/.config/nvim/undodir
set undofile

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set autoindent
set wrap


augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

au BufNewFile,BufRead *.wiki setf vimwiki

autocmd Filetype c set nowrap
autocmd Filetype cpp set nowrap
autocmd Filetype python set nowrap
autocmd Filetype haskell set nowrap
autocmd Filetype haskell set expandtab
autocmd Filetype vimwiki set nowrap


set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=black

call plug#begin('~/.config/nvim/plugged')

"====themes================

Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'lifepillar/vim-wwdc16-theme'
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'franbach/miramare'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'ghifarit53/tokyonight-vim'
Plug '~/.config/nvim/plugged/salvation/'
Plug 'senran101604/neotrix.vim'
Plug 'https://github.com/lighthaus-theme/vim-lighthaus'

"====themes================
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/lightline_foobar.vim'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp'}
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'SirVer/ultisnips'
Plug 'mbbill/undotree'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/vifm/vifm.vim'
Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki', { 'for': 'vimwiki'}
Plug 'tpope/vim-commentary'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'erietz/vim-terminator'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'iqxd/vim-mine-sweeping'
Plug 'neovimhaskell/haskell-vim'
Plug 'lervag/vimtex'

call plug#end()

"==============themes=============

source ~/.config/nvim/themes.vim

"==============themes=============

"==============specifications=====


"vimwiki index
let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'

let wiki_2 = {}
let wiki_2.path = '~/IEM/IEM_wiki/'

let wiki_3 = {}
let wiki_3.path = '~/JADAVPUR/WIKI/'

let g:vimwiki_list = [wiki_1, wiki_2, wiki_3]

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_browser = 'surf'
" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
"let g:mkdp_markdown_css = ''

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

"so that the markdown plugin doesn't fold all the headers by default
autocmd Filetype markdown normal zR

" let g:undotree_WindowLayout = 3

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

lua << EOF
require('lspconfig').hls.setup{
	settings = {
		rootmarkers = {".git/", "*.hs"}
	}
}
EOF

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" augroup THE_PRIMEAGEN
"     autocmd!
"     autocmd BufWritePre * :call TrimWhitespace()
"     " autocmd VimEnter * :VimApm
" augroup END

"=============key mappings===========
source ~/.config/nvim/keymaps.vim
"=============key mappings===========
