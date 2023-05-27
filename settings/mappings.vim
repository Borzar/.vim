"Quit nerdtree
"let NERDTreeQuitOnOpen=1

"Set the backslash as the leader key.
let mapleader = " "

let g:coc_disable_startup_warning = 1
let NERDTreeWinPos=1

nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
nmap <Leader>bd :bd<CR>

nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

map <Leader>ob :Buffers<cr>
map <Leader>p :Files<cr>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-definition)
