syntax on

set nocompatible
filetype plugin on
set noerrorbells
set tabstop=4
set shiftwidth=4
set smartindent
set smartcase
set number relativenumber
set laststatus=2
set noshowmode
set nowrap
set termguicolors

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

"Plug 'https://github.com/rakr/vim-one'  "one-dark theme
Plug 'ayu-theme/ayu-vim'  "ayu theme
Plug 'sts10/vim-pink-moon' "pink moon theme
Plug 'kaicataldo/material.vim'  "material theme
"Plug 'liuchengxu/space-vim-theme' "space vim theme
Plug 'BrainDeath0/Hypsteria' " hypsteria theme
Plug 'lifepillar/vim-wwdc16-theme' " very good dark theme
"Plug 'KeitaNakamura/neodark.vim' "neodark theme - fair theme but will push off because downsizing
Plug 'rakr/vim-two-firewatch' "two firewatch theme
Plug 'blueshirts/darcula'  "darcula
"Plug 'cormacrelf/vim-colors-github'
Plug 'franbach/miramare' "one of the best(comes with own lightline theme)
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'sainnhe/sonokai'
"Plug 'sainnhe/forest-night'
Plug 'morhetz/gruvbox'

"====themes================

Plug 'itchyny/lightline.vim'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/vifm/vifm.vim'
Plug 'sainnhe/lightline_foobar.vim'
Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'

call plug#end()


"==============airline themes=============
"* -> works well with darcula without termguicolors set

let g:lightline = {
      \ 'colorscheme': 'palenight_alter',
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
"let ayucolor="mirage"
"let ayucolor="dark" 
"colorscheme ayu

"----------------darcula(own lightline theme)
"AMAZING
"Looks nice without termguicolors
"colorscheme darcula

"----------------embark(own lightline theme)
"AMAZING
"colorscheme embark

"----------------pink moon theme(moons)
"NICE
"works well without(lot harsher colours) termguicolors set
"set background=dark
"colorscheme pink-moon

"----------------material theme(palenight_alter)
"NICE-default, AMAZING-darker>ocean>palenight
"default' | 'palenight' | 'ocean' | 'darker'
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'
colorscheme material

"----------------hypsteria theme(hypsteria_alter)
"AMAZING
"colorscheme hypsteria

"----------------wwdc16 theme(wwdc16_alter)
"NICE-looks nice with transparent background
"let g:wwdc16_transp_bg = 1
"colorscheme wwdc16


"----------------two-firewatch theme(tfw_dark)
"FANTASTIC
"set background=dark 
"let g:two_firewatch_italics=1
"colorscheme two-firewatch


"----------------miramare theme(own lightline theme)
"AMAZING
"let g:miramare_enable_italic = 1
"let g:miramare_enable_italic_string = 1
"let g:miramare_enable_bold = 1
"let g:miramare_cursor = 1
"colorscheme miramare

"----------------sonokai theme(own lightline theme)
"AMAZING - need to check out the documentation
"andromeda|default|shusia|maia
"let g:sonokai_style = 'maia'
"let g:sonokai_cursor = 'green'
"let g:sonokai_enable_italic = 1
"let g:sonokai_diagnostic_line_highlight = 1
"let g:sonokai_lightline_disable_bold = 1
"let g:sonokai_better_performance = 1 "decreases loading time by 50%
"colorscheme sonokai

"----------------gruvbox theme(own lightline theme, miramare)
"AMAZING
"https://github.com/morhetz/gruvbox/wiki/Configuration - for further gruvbox configuration
"let g:gruvbox_contrast_dark = 'hard'
"set bg=dark
"colorscheme gruvbox


"==============themes=============

"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=black

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



