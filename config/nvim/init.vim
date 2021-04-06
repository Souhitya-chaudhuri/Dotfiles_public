
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

"Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set autoindent

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

set scrolloff=8
set noswapfile
set incsearch
" set splitbelow splitright
set splitright
set signcolumn=yes
set undodir=$HOME/.config/nvim/undodir
set undofile


call plug#begin('~/.config/nvim/plugged')

"====themes================

Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'lifepillar/vim-wwdc16-theme'
Plug 'blueshirts/darcula'
Plug 'franbach/miramare'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'ghifarit53/tokyonight-vim'
Plug 'https://exo.comfi.es/exorcist365/salvation'
Plug 'senran101604/neotrix.vim'
Plug 'https://github.com/lighthaus-theme/vim-lighthaus'

"===dead themes
"Plug 'rakr/vim-two-firewatch'
"Plug 'sts10/vim-pink-moon'
"Plug 'jsit/toast.vim'
"Plug 'morhetz/gruvbox'
"Plug 'sainnhe/forest-night'
"Plug 'cormacrelf/vim-colors-github'
"Plug 'liuchengxu/space-vim-theme' "space vim theme
"Plug 'KeitaNakamura/neodark.vim' "neodark theme - fair theme but will push off because downsizing
"Plug 'https://github.com/rakr/vim-one'  "one-dark theme
"Plug 'BrainDeath0/Hypsteria'

"====themes================

Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp'}
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'SirVer/ultisnips'
Plug 'itchyny/lightline.vim'
" Plug 'https://github.com/kien/ctrlp.vim'
Plug 'mbbill/undotree'
" Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/vifm/vifm.vim'
Plug 'sainnhe/lightline_foobar.vim'
Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki', { 'for': 'vimwiki'}
Plug 'tpope/vim-commentary'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
"Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'erietz/vim-terminator'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

call plug#end()


"==============airline themes=============
"* -> works well with darcula without termguicolors set

let g:lightline = {
      \ 'colorscheme': 'embark',
	  \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
"ayu_mirage with ayu
"deus_beta_dark with neodark
"neodark_alter with neodark *
"tfw_dark with two-firewatch dark
"moons with pink-moon
"palenight_alter with material palenight *
"space_vim_dark with space-vim theme
"hypsteria_alter with hypsteria *
"wwdc16_alter with wwdc16

"==============airline themes=============


"==============themes=============


"----------------ayu color scheme(ayu, ayu_mirage)
"AMAZING
" let ayucolor="mirage"
" let ayucolor="dark"
" colorscheme ayu

"----------------darcula(darcula)
"AMAZING
"Looks nice without termguicolors
" colorscheme darcula

"----------------embark(embark)
"AMAZING
colorscheme embark

"----------------material theme(palenight_alter)
" NICE-default, AMAZING-darker>ocean>palenight
"default' | 'palenight' | 'ocean' | 'darker'
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'darker'
" colorscheme material

"----------------wwdc16 theme(wwdc16_alter)
"NICE-looks nice with transparent background
" let g:wwdc16_transp_bg = 1
" colorscheme wwdc16


"----------------miramare theme(miramare)
"AMAZING
" let g:miramare_enable_italic = 1
" let g:miramare_enable_italic_string = 1
" let g:miramare_enable_bold = 1
" let g:miramare_cursor = 1
" colorscheme miramare

"----------------sonokai theme(sonokai)
"AMAZING - need to check out the documentation
"andromeda|default|shusia|maia
" let g:sonokai_style = 'andromeda'
" let g:sonokai_cursor = 'green'
" let g:sonokai_enable_italic = 1
" let g:sonokai_diagnostic_line_highlight = 1
" let g:sonokai_lightline_disable_bold = 1
""" let g:sonokai_better_performance = 1 "decreases loading time by 50%
" colorscheme sonokai

"----------------gruvbox-material(gruvbox_material)
" set background=dark
" " Available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_enable_bold = 1
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_diagnostic_line_highlight = 1
" let g:gruvbox_material_lightline_disable_bold = 1
" let g:gruvbox_material_palette = 'original' "original, mix, material
" colorscheme gruvbox-material

"----------------tokyo night(tokyonight_neodark_alter)
" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 1
" colorscheme tokyonight

"----------------salvation(gruvbox-material)
" colorscheme salvation

"----------------neotrix(lighthaus)
 "let g:neotrix_italicize_comments = 1
 "let g:neotrix_italicize_strings = 1
""galaxy | galaxy_hard | retro_hard | retro
 "let g:neotrix_dark_contrast = 'galaxy'
 "colorscheme neotrix

"----------------lighthaus(lighthaus)
" colorscheme lighthaus

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

" let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
" let g:cpp_class_decl_highlight = 1
" let g:cpp_posix_standard = 1
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_experimental_template_highlight = 1
" let g:cpp_concepts_highlight = 1

lua << EOF
require('lspconfig').hls.setup{}
EOF


"==============specifications=====


set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=black

"=============key mappings===========

let mapleader = " "
nmap <leader>, <C-w>
noremap ;k <Esc>
inoremap ;k <Esc>
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>Q <C-w>c
nnoremap <leader>sa :wa<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>ss :execute "source %"<CR>
noremap <leader>L :vertical resize +4<CR>
noremap <leader>H :vertical resize -4<CR>
noremap <leader>K :resize +4<CR>
noremap <leader>J :resize -4<CR>
noremap <leader>VV :vnew term://bash<CR>
noremap <silent> <leader>vv :Vifm<CR>
"moves to a vertical split
map <leader>th <C-w>t<C-w>H
"moves to a horizontal split
map <leader>tk <C-w>t<C-w>K
nnoremap <leader>sw :set wrap<CR>
tnoremap ;k <C-\><C-N>
nnoremap <leader>Ss :set spell<CR>

nnoremap <silent> <C-n>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>U  :UndotreeToggle<CR>:UndotreeFocus<CR>
nnoremap <leader>MR :MarkdownPreview<CR>

"Snippets region
nnoremap <leader>FO :-1read $HOME/.config/nvim/snippets/for<CR>f(a
nnoremap <leader>FR :-1read $HOME/.config/nvim/snippets/for_rev<CR>f(a

inoremap LL <C-m>

"Terminator
nnoremap <silent> <leader>TO :TerminatorRunFileInOutputBuffer<CR>
nnoremap <silent> <leader>TT :TerminatorRunFileInTerminal<CR>

"=====ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"=============key mappings===========

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" fun! Wikicolour()
" 	let g:lightline = {
" 		  \ 'colorscheme': 'tfw_dark',
" 		  \ }
" 	set background=dark
" 	let g:two_firewatch_italics=1
" 	colorscheme two-firewatch
" endfun

" autocmd Filetype vimwiki :call Wikicolour()

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    " autocmd VimEnter * :VimApm
augroup END




