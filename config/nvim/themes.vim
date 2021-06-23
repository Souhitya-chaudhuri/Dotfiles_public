"==============lightline themes=============
"* -> works well with darcula without termguicolors set

let g:lightline = {
      \ 'colorscheme': 'neodark_alter',
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
"palenight_alter with material palenight *
"wwdc16_alter with wwdc16

"==============ligthline themes=============

"==============themes=============


"----------------ayu color scheme(ayu, ayu_mirage)
"AMAZING
"dark | mirage
" let ayucolor="mirage"
" colorscheme ayu

"----------------darcula(darcula)
"AMAZING
" colorscheme darcula-solid

"----------------embark(embark)
"AMAZING
" colorscheme embark

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
" let g:sonokai_style = 'shusia'
" let g:sonokai_cursor = 'green'
" let g:sonokai_enable_italic = 1
" let g:sonokai_diagnostic_line_highlight = 1
" let g:sonokai_lightline_disable_bold = 1
" let g:sonokai_better_performance = 1 "decreases loading time by 50%
" colorscheme sonokai

"----------------gruvbox-material(gruvbox_material)
" set background=dark
" Available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_enable_bold = 1
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_diagnostic_line_highlight = 1
" let g:gruvbox_material_lightline_disable_bold = 1
" let g:gruvbox_material_palette = 'original' "original, mix, material
" colorscheme gruvbox-material

"----------------tokyo night(tokyonight, neodark_alter)
" let g:tokyonight_style = 'storm' " available: night, storm
" let g:tokyonight_enable_italic = 1
" colorscheme tokyonight

"----------------salvation(gruvbox-material)
" colorscheme salvation

"----------------neotrix(lighthaus)
let g:neotrix_italicize_comments = 1
let g:neotrix_italicize_strings = 1
""galaxy | galaxy_hard | retro_hard | retro
let g:neotrix_dark_contrast = 'galaxy_hard'
colorscheme neotrix

"----------------lighthaus(lighthaus)
" colorscheme lighthaus

"==============themes=============

"plugins not in use:
"
"Plug 'blueshirts/darcula'
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

"
" Plug 'famiu/feline.nvim'
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'https://github.com/adelarsq/neoline.vim'

