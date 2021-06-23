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
noremap <leader>VV :vnew term://zsh<CR>
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
nnoremap <leader>sf :setf 
nnoremap <silent> <leader>gf <C-w>gf
nnoremap <silent> <leader>tn :$tabnew<CR>
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>bp :bprev<CR>

"Snippets region
nnoremap <leader>FO :-1read $HOME/.config/nvim/snippets/for<CR>f(a
nnoremap <leader>FR :-1read $HOME/.config/nvim/snippets/for_rev<CR>f(a


"Terminator
" nnoremap <silent> <leader>TO :TerminatorRunFileInOutputBuffer<CR>
" nnoremap <silent> <leader>TT :TerminatorRunFileInTerminal<CR>
" | Key map                                     | Description                                                                        |
" | ---                                         | ---                                                                                |
" | `<leader>ot`                                | Opens (or reopens) a terminal window                                               |
" | `<leader>or`                                | Opens a repl                                                                       |
" | `<leader>rf`                                | Runs your current file (or visual selection) in the output buffer                  |
" | `<leader>rt`                                | Runs your current file (or visual selection) in the terminal                       |
" | `<leader>rs`                                | Stops the running job in the output buffer                                         |
" | `<leader>rm`                                | Modifies command via command line before running in output buffer                  |
" |                                             | **Pro tip: hit `<c-f>` on vims command line to further modify before running**     |
" | `<leader>sd`                                | Send text in delimiter to terminal                                                 |
" | `<leader>ss`                                | Sends visual selection to terminal                                                 |
" | `:TerminatorSendToTerminal echo \"hi there"` | Sends `echo \"hi there"` to the terminal                                            |

"=====ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
nnoremap <leader>tw :call TrimWhitespace()<CR>
