syntax on

set noerrorbells
set tabstop=4
set shiftwidth=4
set smartindent
set smartcase
set number relativenumber
set laststatus=2
set noshowmode
set nowrap

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set noswapfile
set incsearch
set splitbelow splitright


call plug#begin('~/.vim/plugged')

"====themes================

Plug 'https://github.com/rakr/vim-one'  "one-dark theme
Plug 'ayu-theme/ayu-vim'  "ayu theme
Plug 'sts10/vim-pink-moon' "pink moon theme
Plug 'kaicataldo/material.vim'  "material theme
Plug 'liuchengxu/space-vim-theme' "space vim theme
Plug 'BrainDeath0/Hypsteria' " hypsteria theme
Plug 'lifepillar/vim-wwdc16-theme' " very good dark theme
Plug 'KeitaNakamura/neodark.vim' "neodark theme
Plug 'rakr/vim-two-firewatch' "two firewatch theme
Plug 'blueshirts/darcula'  "darcula
Plug 'cormacrelf/vim-colors-github'
Plug 'franbach/miramare'

"====themes================

Plug 'itchyny/lightline.vim'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/vifm/vifm.vim'
Plug 'sainnhe/lightline_foobar.vim'
Plug 'scrooloose/nerdtree'

call plug#end()


"==============airline themes=============
"* -> works well with darcula without termguicolors set

let g:lightline = {
      \ 'colorscheme': 'miramare',
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

"----------------one dark color scheme
"set termguicolors
"let g:one_allow_italics = 1
"set background=dark " for the dark version
"colorscheme one

"----------------ayu color scheme

"set termguicolors     " enable true colors support
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

"----------------darcula

"colorscheme darcula

"----------------pink moon theme
"works well with or without(lot harsher colours) termguicolors set
"set termguicolors
"set background=dark
"colorscheme pink-moon

"----------------material theme

"set termguicolors
"--place the desired value in the 2nd line-----'default' | 'palenight' | 'ocean' | 'darker'
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'darker'
"colorscheme material

"----------------space-vim theme

"set termguicolors
"let g:space_vim_italic = 1
"set background=dark
"colorscheme space_vim_theme

"----------------hypsteria theme

"NOT A GOOD  COLOUR SCHEME
"colorscheme hypsteria

"----------------wwdc16 theme

"set termguicolors
"let g:wwdc16_transp_bg = 1
"colorscheme wwdc16

"----------------neodark theme

"set termguicolors
"let g:neodark#background = '#202020'
"let g:neodark#use_256color = 1 " default: 0
"let g:neodark#terminal_transparent = 1 " default: 0
"let g:neodark#solid_vertsplit = 1 " default: 0
"colorscheme neodark

"----------------two-firewatch theme

"set termguicolors
"set background=dark 
"let g:two_firewatch_italics=1
"colorscheme two-firewatch

"----------------github theme

"set termguicolors
"let g:github_colors_soft = 1
"set background=dark
"let g:github_colors_block_diffmark = 0
"colorscheme github

"----------------miramare theme

set termguicolors
let g:miramare_enable_italic = 1
"let g:miramare_disable_italic_comment = 1
"let g:miramare_transparent_background = 1
let g:miramare_enable_italic_string = 1
let g:miramare_enable_bold = 1
let g:miramare_cursor = 1
colorscheme miramare

"==============themes=============

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=grey

"=============key mappings===========

let mapleader = "\<Space>"
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
"moves to a vertical split
map <leader>th <C-w>t<C-w>H
"moves to a horizontal split
map <leader>tk <C-w>t<C-w>K 

nnoremap <C-n>n :NERDTreeToggle<CR>

"=============key mappings===========



