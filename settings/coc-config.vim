" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
hi link CocFloating Normal

autocmd ColorScheme * call Highlight()

function! Highlight() abort
  hi SignifySignAdd    ctermfg=green  guifg=#00ff00 ctermbg=NONE guibg=NONE
  hi SignifySignDelete ctermfg=red    guifg=#ff0000 ctermbg=NONE guibg=NONE
  hi SignifySignChange ctermfg=yellow guifg=#ffff00 ctermbg=NONE guibg=NONE
  hi SignColumn ctermbg=NONE guibg=NONE
  hi Conceal ctermfg=239 guifg=#504945 guibg=NONE
  hi CocSearch ctermfg=12 guifg=#18A3FF
  hi CocErrorHighlight ctermfg=Red  guifg=#ff0000
  hi CocErrorSign ctermfg=Red guifg=#ff0000 
  hi CocWarningSign ctermfg=Brown guifg=#ff922b
  hi CocInfoSign ctermfg=Yellow guifg=#fab005
  hi CocHintSign ctermfg=White guifg=#ffffff guibg=NONE
  hi default link CocErrorFloat CocErrorSign 
  hi default link CocWarningFloat CocWarningSign 
  hi default link CocInfoFloat CocInfoSign 
  hi default link CocHintFloat CocHintSign 
  hi default link CocHoverRange Search 
  hi default link CocCursorRange Search 
  hi Normal ctermbg=16 guibg=#000000
  hi LineNr ctermbg=16 guibg=#000000
endfunction

"colorscheme
autocmd vimenter * ++nested colorscheme happy_hacking 
autocmd ColorScheme * hi CocMenuSel ctermbg=237 guibg=#13354A
autocmd FileType json syntax match Comment +\/\/.\+$+

"prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

